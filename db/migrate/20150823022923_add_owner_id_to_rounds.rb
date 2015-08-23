class AddOwnerIdToRounds < ActiveRecord::Migration
  def change
    add_column :rounds, :owner_id, :integer
  end
end
