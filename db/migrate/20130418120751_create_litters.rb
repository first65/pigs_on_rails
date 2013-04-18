class CreateLitters < ActiveRecord::Migration
  def change
    create_table :litters do |t|
      t.string :name

      t.timestamps
    end
  end
end
