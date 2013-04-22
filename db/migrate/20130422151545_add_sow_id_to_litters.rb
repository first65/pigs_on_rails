class AddSowIdToLitters < ActiveRecord::Migration
  def change
    add_column :litters, :sow_id, :integer
  end
end
