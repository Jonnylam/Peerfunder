class AddFieldsToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :company_id, :integer
    add_column :profiles, :story, :text
    add_column :profiles, :product_overview, :text
    add_column :profiles, :company_stage, :text
    add_column :profiles, :year_founded, :text
    add_column :profiles, :number_of_employees, :text
    add_column :profiles, :pitch_video, :string
    add_column :profiles, :problem, :text
    add_column :profiles, :opportunity, :text


    add_column :profiles, :management_team, :text
    add_column :profiles, :advisors, :text
    add_column :profiles, :previous_investors, :text
    add_column :profiles, :founders, :text
    add_column :profiles, :management_experience, :text

    add_column :profiles, :customer_problem, :text
    add_column :profiles, :other_products, :text
    add_column :profiles, :target_market, :text
    add_column :profiles, :customers, :text
    add_column :profiles, :sales_market_strategy, :text
    add_column :profiles, :competitors, :text
    add_column :profiles, :competitive_advantage, :text
    add_column :profiles, :business_plan, :text
    add_column :profiles, :short_term_goals, :text
    add_column :profiles, :long_term_goals, :text
    add_column :profiles, :market_strategy, :text
    add_column :profiles, :use_of_proceeds, :text
    
  end
end
