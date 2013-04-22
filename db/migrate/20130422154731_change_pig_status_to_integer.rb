class ChangePigStatusToInteger < ActiveRecord::Migration
  def change
    change_column :pigs, :status, :integer
  end
end
