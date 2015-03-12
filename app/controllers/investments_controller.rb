class InvestmentsController < ApplicationController
  before_action :load_round

  def new
    @investment = Investment.new
  end

  def create
    @investment = Investment.new(investment_params)
    @investment.investor = current_user
    @investment.round = @round

    if @investment.save
      redirect_to company_round_path(@company, @round), notice: "INvestment MAde!"
    else
       format.html { render :show , alert: "Investment could not be saved. Please try again!" }
        format.js {}
    end
  end

  def destroy
  end

  private
  def investment_params
    params.require(:investment).permit(:investor, :round, :company, :amount)
  end
  def load_round
    @round = Round.find(params[:round_id])
    @company = Company.find(params[:company_id])
  end
end
