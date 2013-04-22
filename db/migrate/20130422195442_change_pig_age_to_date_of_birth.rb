class ChangePigAgeToDateOfBirth < ActiveRecord::Migration
  def change
    rename_column :pigs, :age, :dob
    change_column :pigs, :dob, :datetime
  end
end
