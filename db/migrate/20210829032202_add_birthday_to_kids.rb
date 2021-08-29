class AddBirthdayToKids < ActiveRecord::Migration[6.1]
  def change
    add_column :kids, :birthday, :date
  end
end
