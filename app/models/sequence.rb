class Sequence < ActiveRecord::Base
  belongs_to :user
  has_many :sequence_asanas
  has_many :asanas, through: :sequence_asanas
  validates :name, presence: true
  validates :user_id, presence: true

  def slug
    self.name.downcase.gsub(" ", "-")
  end

  def self.find_by_slug(slug)
    self.all.detect { |sequence| sequence.slug == slug }
  end

  def blurb
    self.notes[0, 10]
  end
end