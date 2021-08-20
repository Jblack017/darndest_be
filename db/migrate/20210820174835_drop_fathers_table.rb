class DropFathersTable < ActiveRecord::Migration[6.1]
  def change
      drop_table :fathers
    end
end
