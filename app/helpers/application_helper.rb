module ApplicationHelper
  def alive_id
    Health.find_by_name('Alive').id
  end
end
