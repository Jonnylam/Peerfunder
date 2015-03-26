class AccreditationsController < ApplicationController
before_action :load_user
	def create
	end

	def new
		@user = current_user
	end

	def index
	end

	def update_accreditations
	
	end
	
	private 
	def load_user
		@user = User.find(params[:user_id])
	end
end
