class InvitationsController < ApplicationController
	before_action :load_users
  before_action :load_everything


	def create(invitee_id)
    @invitation = Invitation.new(invitation_params)
    @invitation.invitee_id = invitee_id
    @invitation.inviter = current_user
    unless @invitation.save
      render :new, alert: 'One or all of your invitations could not be sent.'
    end
		# @invitation = Invitation.create(invitation_params)
		# @invitation.inviter = current_user
		# @invitation.save
		# # binding.pry
		# redirect_to company_round_path(params[:invitation][:company_id], @invitation.round_id)
	end

	def load_users
    @users = User.all
  end

  def send_out_invitations
    invitee_ids = params[:invitee_ids]

    invitee_ids.each do |invitee_id|
      create(invitee_id)
    end
    redirect_to company_round_path(params[:company_id], params[:round_id])
  end
  
 
  private
  def invitation_params
    params.permit(:round_id)
  	# params.require(:invitation)
  	# 			.permit(:round_id, :invitee_id)
  end

  def load_everything
     @companies = Company.all
     @investments = Investment.all
     @rounds = Round.all
     @invitations = Invitation.all
     @follow = Follow.all
  end


end
