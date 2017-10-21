class Group < ActiveRecord::Base
  has_many :asanas

  def make_label
    self.name.split(" ").map { |word| word.capitalize }.join(" ")
  end

  def self.all_asanas_by_group
    self.all.map { |group| Asana.find_all_in(group.name) }
  end
end