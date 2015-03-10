class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.integer :investor_id
      t.integer :round_id
      t.integer :company_id
      t.integer :amount

      t.timestamps null: false
    end
  end
end
