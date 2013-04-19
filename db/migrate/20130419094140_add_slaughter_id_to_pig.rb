class AddSlaughterIdToPig < ActiveRecord::Migration
  def change
    add_column :pigs, :slaughter_id, :integer
  end
end
