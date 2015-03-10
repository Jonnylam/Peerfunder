class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :company_logo
      t.string :elevator_pitch
      t.string :location
      t.string :industry_type
      t.string :website_url
      t.integer :owner_id
      t.text :problem_description
      t.text :solution_description
      t.text :product_description
      t.text :business_description
      t.text :market_description
      t.text :competition_description
      t.text :advantages_description

      t.timestamps null: false
    end
  end
end
