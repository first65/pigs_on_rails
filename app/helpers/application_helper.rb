module ApplicationHelper
  def alive_id
    Health.find_by_name('Alive').id
  end
  
  def slaughtered_id
    Health.find_by_name('Slaughtered!').id
  end
end
