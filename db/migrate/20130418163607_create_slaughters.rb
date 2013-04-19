class CreateSlaughters < ActiveRecord::Migration
  def change
    create_table :slaughters do |t|
      t.integer :butcher_id
      t.string :transport_id

      t.timestamps
    end
  end
end
