class Asana < ActiveRecord::Base
  belongs_to :group
  has_many :sequence_asanas
  has_many :sequences, through: :sequence_asanas

  def self.find_all_in(group)
    self.where('group_id == ?', Group.find_by(name: group))
  end
end