class CreateDueDiligences < ActiveRecord::Migration
  def change
    create_table :due_diligences do |t|
      t.integer :round_id
      t.integer :company_id
      t.string :file

      t.timestamps null: false
    end
  end
end
