## Comida Casera
A meal planning app designed to give you random recipies to cook. Comida Casera picks a recipe based on what ingredients you have and gives you the nutrition info of the meal.

## Motivation
Sifting through recipes online is always a chore when you are trying to use ingredients you already have. Comida Casera is the solution to that problem by picking recipes that only contain the ingredients you have in your pantry or fridge.

## Build status
Build status of continus integration i.e. travis, appveyor etc. Ex. - 

[![Build Status](https://travis-ci.org/akashnimare/foco.svg?branch=master)](https://travis-ci.org/akashnimare/foco)
[![Windows Build Status](https://ci.appveyor.com/api/projects/status/github/akashnimare/foco?branch=master&svg=true)](https://ci.appveyor.com/project/akashnimare/foco/branch/master)

## Code style
If you would like to contribute, this project follows Ruby/RuboCop conventions.

[![ruby-standard-style](https://img.shields.io/badge/code%20style-standard-brightgreen.svg?style=flat)](https://github.com/rubocop-hq/ruby-style-guide)
 
## Screenshots
Include logo/demo screenshot etc.

## Tech/framework used
<b>Built with</b>
- [Rails 6.0.1](https://rubyonrails.org/)

## Features
There are a multitude of websites out there to share recipes. There are even sites that will produce a random recipe for you if don't know what to make. Those sites don't take your pantry in mind though. Comida Casera is designed give you recipes you can actually make with what you currently have.

## Code Example
Show what the library does as concisely as possible, developers should be able to figure out **how** your project solves their problem by looking at the code example. Make sure the API you are showing off is obvious, and that your code is short and concise.

## Installation
### Requirements
- [Ruby 2.6.3](https://github.com/ruby/ruby)
- [Rails 6.0.1](https://rubyonrails.org/)
- [PostgreSQL-11](https://www.postgresql.org/)

Once these are installed, clone the repository to your local machine with one of the following commands:

**HTTPS**

`git clone https://github.com/CoopTang/comida_casera.git`

**SSH**

`git clone git@github.com:CoopTang/comida_casera.git`

Once cloned onto your computer, `cd` into the project directory and run `bundle install ` to install all required gems for the project.

**Database Setup**

Run the following command to set up the database

`rails db:{drop,create,migrate,seed}`

## API Reference

There is currently no API for Comida Casera at the moment

## Tests
[RSpec](https://github.com/rspec/rspec-rails) is the testing framwork used for testing.

**To run all tests**

`bundle exec rspec`

This will run all tests in the `/spec` directory.


**To run an entire test file**

`bundle exec rspec spec/<path to specifc test>`

**To run a specific test in a file**

`bundle exec rspec spec/<path to specifc test>:<line number of the test>`


## How to use?
To start the server and view the site from the browser, start the server with `rails s` . By default, the server runs on http://localhost:3000

## Contribute

Let people know how they can contribute into your project. A [contributing guideline](https://github.com/zulip/zulip-electron/blob/master/CONTRIBUTING.md) will be a big plus.

## Credits
Give proper credits. This could be a link to any repo which inspired you to build this project, any blogposts or links to people who contrbuted in this project. 

#### Anything else that seems useful

## License
A short snippet describing the license (MIT, Apache etc)

MIT © [Yourname]()