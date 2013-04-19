class Slaughter < ActiveRecord::Base
  attr_accessible :butcher_id, :transport_id, :pig_ids
  has_many :pigs
end
