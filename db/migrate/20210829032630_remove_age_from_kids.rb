class RemoveAgeFromKids < ActiveRecord::Migration[6.1]
  def change
    remove_column :kids, :age, :integer
  end
end
