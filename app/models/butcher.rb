class Butcher < ActiveRecord::Base
  attr_accessible :address, :name, :telephone
  has_and_belongs_to_many :slaughters
end
