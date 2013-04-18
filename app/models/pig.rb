class Pig < ActiveRecord::Base
  attr_accessible :age, :litter_id, :name, :status
  validates_presence_of :age, :litter_id, :name, :status
  
  belongs_to :litter
  
end
