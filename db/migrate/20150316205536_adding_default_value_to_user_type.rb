class AddingDefaultValueToUserType < ActiveRecord::Migration
  def change
    remove_column :users, :user_type, :string
    add_column :users, :user_type, :string, default: "normal"
  end
end
