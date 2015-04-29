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
			redirect_to company_profiles_path 
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

	private 

	def find_profile
    @profile = Profile.find(params[:id])
  end
	
	def profile_params
		params.require(:profile).permit(
				:overview,
				:video,
				:team,
				:products,
				:business_model,
				:competition,
				:company_id
		)
	end

	def load_everything
		@companies = Company.all
	end

end
