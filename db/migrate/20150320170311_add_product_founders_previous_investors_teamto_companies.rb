class AddProductFoundersPreviousInvestorsTeamtoCompanies < ActiveRecord::Migration
  def change
  	add_column :companies, :product, :string 
  	add_column :companies, :founders, :string
  	add_column :companies, :previous_investors, :string
  	add_column :companies, :team, :string 
  end
end
