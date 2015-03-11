class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to companies_path
    else
      render :new, alert: 'Company could not be created.'
    end
  end

  def new
    @company = Company.new
    
  end

  def show
    @company = Company.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def company_params
    params.require(:company).permit(
      :name,
      :company_logo,
      :elevator_pitch,
      :location,
      :industry_type,
      :website_url
    )
  end
end
