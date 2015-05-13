class AddAccreditationStatusToAccreditationController < ActiveRecord::Migration
  def change
  	add_column :accreditations, :accreditation_status, :boolean, default: false
  end
end
