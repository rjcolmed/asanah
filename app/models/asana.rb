class Asana < ActiveRecord::Base
  belongs_to :group
  has_many :sequence_asanas
  has_many :sequences, through: :sequence_asanas
end