class AccreditationsController < ApplicationController
before_action :load_user

	def new
		@accreditation = Accreditation.new
		@user = current_user
	end

	def create
		@accreditation = Accreditation.new(accreditation_params)
		@accreditation.user_id = current_user.id
		@user = current_user
		if @accreditation.save 
			@user.accreditation = true
			@user.save
			redirect_to users_profile_path, notice: "Accreditation Saved Son!"
		else

    end

	end


	def index
	end

	def update_accreditations
	
	end
	
	private 
	
	def accreditation_params
    params.require(:accreditation)
    	.permit(:legal_name, 
    					:investing_entity_type, 
    					:type_of_accreditation, 
    					:signature, 
    					:user_id)
  end

	def load_user
		@user = User.find(params[:user_id])
	end
end
