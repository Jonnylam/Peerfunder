class ProfilesController < ApplicationController
	before_action :load_everything
	load_and_authorize_resource :company
	def index
	end

	def new
		@profile = Profile.new
	end

	def create
		@profile = Profile.new(profile_params)
		@profile.company_id = params[:company_id]

		if @profile.save 
			redirect_to company_profile_path(@company, @profile)
			flash[:notice] = "Saved"
		else
			format.html {
				flash[:notice] = "Not Saved!!!"
			}
			format.js{}
		end
	end

	def show
		find_profile
	end

	def edit 
		find_profile
	end

	def update
		@profile = find_profile
		respond_to do |format| 
			if @profile.update_attributes(profile_params)
				format.html{
					redirect_to company_profile_path(@company, @profile)
				}
				format.js{}
				@profile.save
			else
				format.html{
					render :show, alert: "It didn't work, pleasea try again"
				}
				format.js {}
			end
		end
	end

	private 

	def find_profile
    @profile = Profile.find(params[:id])
  end
	
	def profile_params
		params.require(:profile).permit(
				:company_id,
				:story,
				:product_overview,
				:company_stage,
				:year_founded,
				:number_of_employees,
				:pitch_video,
				:problem,
				:opportunity,
				:management_team,
				:advisors,
				:previous_investors,
				:founders,
				:management_experience,
				:customer_problem,
				:other_products,
				:target_market,
				:customers,
				:sales_market_strategy,
				:competitors,
				:competitive_advantage,
				:business_plan,
				:short_term_goals,
				:long_term_goals,
				:market_strategy,
				:use_of_proceeds
		)
	end

	def load_everything
		@companies = Company.all
	end

end
