class FundraisingsController < ApplicationController
	before_action :find_everything
	def new
		@fundraising = Fundraising.new
	end

	def create
		@fundraising = Fundraising.new(fundraising_params)
		if @fundraising.save 
		end
	end
	def index
		find_everything
	end

	def currentislead
		@round.lead_investor = current_user
	end

	def findlead
		@round = Round.find(params[:round_id])
    @company = Company.find(params[:company_id])
	end

	def havealead
	end

	def find_investors
	end

	def email
	end

	def show
	end

private
	def fundraising_params
		params.require(:fundraising).permit(:round_id, :company_id, :user_id, :email, :subject, :emailcontent)
	end

	def find_everything
    @round = Round.find(params[:round_id])
    @company = Company.find(params[:company_id])
  end


end


