class CreatePigs < ActiveRecord::Migration
  def change
    create_table :pigs do |t|
      t.string :name
      t.integer :litter_id
      t.integer :age
      t.string :status

      t.timestamps
    end
  end
end
