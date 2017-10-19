class User < ActiveRecord::Base
  has_secure_password
  has_many :sequences
  validates :email, presence: true
  validates :username, presence: true
  validates :first_name, presence: true

  def slug
    self.username.downcase.gsub(" ", "-")
  end

  def self.find_by_slug(slug)
    self.all.detect { |slug| slug == slug }
  end
end