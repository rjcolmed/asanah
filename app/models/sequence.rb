class Sequence < ActiveRecord::Base
  belongs_to :user
  has_many :asanas
  validates :name, presence: true
  validates :user_id, presence: true

  def slug
    self.name.downcase.gsub(" ", "-")
  end

  def self.find_by_slug(slug)
    self.all.detect { |sequence| sequence.slug == slug }
  end
end