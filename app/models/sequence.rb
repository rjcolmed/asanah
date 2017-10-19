class Sequence < ActiveRecord::Base
  belongs_to :user
  has_many :asanas
  validates :name, presence: true
  validates :user_id, presence: true
end