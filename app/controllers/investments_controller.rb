class InvestmentsController < ApplicationController
  before_action :load_round

  def new
    @investment = Investment.new
  end

  def create
    @investment = Investment.new(investment_params)
    @investment.investor = current_user
    @investment.round = @round
    @investment.company = @company

    if @investment.save
      @round.amount_raised += @investment.amount
      @round.save
      redirect_to company_round_path(@company, @round), notice: "Investment Made!"
    else
      respond_to do |format|
        format.html { redirect_to company_round_path(@company, @round), alert: "Investment could not be saved. Please try again!" }
        format.js {}
         # flash[:notice] = "Investment could not be saved"
      end
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
