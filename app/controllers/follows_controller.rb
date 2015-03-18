class FollowsController < ApplicationController
	before_action :load_user
	def index
	end

	def create
		current_user.follow(@user)
		flash[:notice] = "You followed #{@user.first_name}"
		redirect_to users_url
	end

	def destroy
		current_user.stop_following(@user)
	end


	private 
	def follow_params 
		params.require(:follow).permit(:followable_id, :followable_type, :follower_id, :follower_type)
	end

	def load_user
		@user = User.find(params[:user_id])
	end

end
