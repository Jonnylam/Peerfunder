class AddUserIdtoAccreditation < ActiveRecord::Migration
  def change
  	add_column :accreditations, :user_id, :integer
  end
end
