class AddFieldsToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :overview, :text
    add_column :profiles, :video, :string
    add_column :profiles, :team, :text
    add_column :profiles, :products, :text
    add_column :profiles, :business_model, :text
    add_column :profiles, :competition, :text
    add_column :profiles, :company_id, :integer
  end
end
