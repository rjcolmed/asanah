class Asana < ActiveRecord::Base
  belongs_to :group
  belongs_to :sequence
end