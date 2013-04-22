class Pig < ActiveRecord::Base
  attr_accessible :age, :name, :status, :slaughter_id, :litter
  validates_presence_of :age, :name, :status

  belongs_to :slaughter
  belongs_to :litter
end
