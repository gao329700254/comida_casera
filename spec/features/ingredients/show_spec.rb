require 'rails_helper'

describe 'Ingredients Show Page:' do
  describe 'As a User' do
    describe 'When I visit an ingredients show page' do
      before :each do
        @egg = create(
          :ingredient,
          name: 'Egg',
          image: 'https://www.seriouseats.com/recipes/images/2014/04/20140430-peeling-eggs-10-1500x1125.jpg'
        )
        @energy    = create(:nutrient_energy, ingredient: @egg)
        @total_fat = create(:nutrient_total_fat, ingredient: @egg)
        @sodium    = create(:nutrient_sodium, ingredient: @egg)
        @protein   = create(:nutrient_protein, ingredient: @egg)

        @large = create(:portion, name: "1 large", weight: 0.5, ingredient: @egg)
        @cup   = create(:portion, name: "1 cup, chopped (136g)", weight: 1.36, ingredient: @egg)

        @huevo = create(:alias, name: 'Huevo', ingredient: @egg)
      end

      scenario 'I am taken to a page where I see all of an ingredients info' do
        visit ingredient_path(@egg)

        expect(current_path).to eq(ingredient_path(@egg))

        expect(page).to have_content('Ingredient: Egg')

        within "#nutrient-#{@energy}" do
          expect(page).to have_content('Energy: 100 cal')
        end

        within "#nutrient-#{@total_fat}" do
          expect(page).to have_content('Total Fat: 1.0 g')
        end

        within "#nutrient-#{@sodium}" do
          expect(page).to have_content('Sodium: 1.0 mg')
        end

        within "#nutrient-#{@protein}" do
          expect(page).to have_content('Protein: 1.0 g')
        end

        within "#portion-#{@large}" do
          expect(page).to have_content("1 large (50 g)")
        end

        within "#portion-#{@cup}" do
          expect(page).to have_content("1 cup (136 g)")
        end

        within "#alias-#{@huevo}" do
          expect(page).to have_content('Name: Huevo')
        end
      end
    end
  end
end