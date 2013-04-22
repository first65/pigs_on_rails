class Pig < ActiveRecord::Base
  attr_accessible :name, :dob, :status, :slaughter_id, :litter
  validates_presence_of :dob, :name, :status

  belongs_to :slaughter
  belongs_to :litter
  
  def health
    Health.find(self.status).name
  end
  
  def age_in_days
    ((Time.now - self.dob) / (3600 * 24)).to_i
  end
  
  def age_in_weeks
    (self.age_in_days / 7).to_i
  end
  
  def age
    if self.age_in_days < 1
      "Born today!"
    elsif self.age_in_days < 14
      self.age_in_days.to_s + " days"
    else
      self.age_in_weeks.to_s + " weeks"
    end
  end
end
