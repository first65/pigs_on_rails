class Slaughter < ActiveRecord::Base
  attr_accessible :butcher_id, :transport_id, :pig_ids
  has_many :pigs
  after_create :kill_pigs
  
  include ApplicationHelper
  
  def kill_pigs
    pigs.each do |pig|
      pig.update_attributes(status: slaughtered_id)
    end
  end
end
