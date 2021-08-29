class AddNicknameToKids < ActiveRecord::Migration[6.1]
  def change
    add_column :kids, :nickname, :string
  end
end
