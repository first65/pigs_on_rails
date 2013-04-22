class Order < ActiveRecord::Base
  attr_accessible :customer, :status
end
