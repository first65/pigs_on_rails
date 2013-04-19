class Slaughter < ActiveRecord::Base
  attr_accessible :butcher_id, :transport_id, :pigs_attributes
  has_many :pigs
  accepts_nested_attributes_for :pigs
end
