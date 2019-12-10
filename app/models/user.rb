class User < ApplicationRecord
  has_secure_password

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_presence_of :password_digest

  enum role: %w[default admin]
end