class FundraisingsController < ApplicationController
	def index
		find_everything
	end

	def currentislead
		@round.lead_investor = current_user
	end

	def findlead
	end

	def havealead
	end

	def email
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
