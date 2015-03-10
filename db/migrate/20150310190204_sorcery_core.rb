class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :email, :null => false
      t.string :crypted_password
      t.string :salt
      t.text :biography
      t.text :experience
      t.boolean :accreditation, :default => false
      t.string :profile_photo_url
      t.string :location
      t.date :dob

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end