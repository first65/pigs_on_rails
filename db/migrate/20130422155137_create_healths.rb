class CreateHealths < ActiveRecord::Migration
  def change
    create_table :healths do |t|
      t.string :name

      t.timestamps
    end
  end
end
