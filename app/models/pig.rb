class Pig < ActiveRecord::Base
  attr_accessible :age, :litter_id, :name, :status, :slaughter_id
  validates_presence_of :age, :litter_id, :name, :status

  belongs_to :litter
  belongs_to :slaughter

end
