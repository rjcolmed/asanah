class Sequence < ActiveRecord::Base
  belongs_to :user
  has_many :asanas
end