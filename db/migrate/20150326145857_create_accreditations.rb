class CreateAccreditations < ActiveRecord::Migration
  def change
    create_table :accreditations do |t|
      t.string :legal_name
      t.string :investing_entity_type
      t.string :type_of_accreditation
      t.string :signature

      t.timestamps null: false
    end
  end
end
