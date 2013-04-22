class Litter < ActiveRecord::Base
  attr_accessible :name, :sow_id
    
  has_many :pigs
  
  def sow
    Pig.find(self.sow_id)
  end
  
  def no_of_piglets
    self.pigs.count
  end
  
end
