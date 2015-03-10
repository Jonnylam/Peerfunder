class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :company_id
      t.integer :lead_investor_id
      t.integer :funding_goal
      t.string :term_sheet

      t.timestamps null: false
    end
  end
end
