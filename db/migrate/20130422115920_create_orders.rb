class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customer
      t.string :status

      t.timestamps
    end
  end
end
