class User < ActiveRecord::Base
  has_secure_password
  has_many :sequences
  validates :email, presence: true
  validates :username, presence: true
  validates :first_name, presence: true
end