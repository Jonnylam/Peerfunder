class InvitationsController < ApplicationController
	before_action :load_users

	def create
		@invitation = Invitation.create(invitation_params)
		@invitation.inviter = current_user
		@invitation.save
		# binding.pry
		redirect_to company_round_path(params[:invitation][:company_id], @invitation.round_id)
	end

	 def load_users
    @users = User.all
  end

  def invitation_params
  	params.require(:invitation)
  				.permit(:round_id, :invitee_id)
  end
end
