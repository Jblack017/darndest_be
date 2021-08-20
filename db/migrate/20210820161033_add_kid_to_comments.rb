class AddKidToComments < ActiveRecord::Migration[6.1]
  def change
    add_reference :comments, :kid, foreign_key: true
  end
end
