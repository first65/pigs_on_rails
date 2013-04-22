class Litter < ActiveRecord::Base
  attr_accessible :name, :pig_attributes
  has_many :pigs
end
