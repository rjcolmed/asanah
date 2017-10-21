class Group < ActiveRecord::Base
  has_many :asanas

  def make_heading
    self.name.split(" ").map { |word| word.capitalize }.join(" ")
  end
end