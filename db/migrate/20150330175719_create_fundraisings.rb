class CreateFundraisings < ActiveRecord::Migration
  def change
    create_table :fundraisings do |t|
      t.integer :round_id
      t.integer :user_id
      t.integer :company_id
      t.string :email
      t.string :subject
      t.text :emailcontent

      t.timestamps null: false
    end
  end
end
