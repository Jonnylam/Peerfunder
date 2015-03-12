class AddAmountRaisedAndOwnerId < ActiveRecord::Migration
  def change
    add_column :companies, :owner_id, :integer
    add_column :rounds, :amount_raised, :integer, :default => 0
  end
end
