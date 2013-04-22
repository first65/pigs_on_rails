class Slaughter < ActiveRecord::Base
  attr_accessible :butcher_id, :transport_id, :pig_ids
  has_many :pigs
  has_and_belongs_to_many :butchers
end
