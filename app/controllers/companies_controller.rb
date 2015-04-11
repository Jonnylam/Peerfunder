class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def create
    @company = Company.new(company_params)
    @company.owner = current_user
    if @company.save
      redirect_to @company
    else
      render :new, alert: 'Project could not be created.'
    end
  end

  def new
    @company = Company.new
  end

  def show
    find_company
    @round = Round.new
  end

  def edit
    find_company
  end

  def profile
  end

  def update
    @company = find_company
    respond_to do |format| 
      if @company.update_attributes(company_params)
        format.html { redirect_to companies_path(@company)}
        # why is it going to companies.X instead of companies/show?
        format.js {}
        @company.save
      else
        format.html { render :show , alert: "Your attempt to update your profile didn't work. Please try again!" }
        format.js {}
      end
    end
  end

  def destroy
    find_company
    @company.destroy
    redirect_to companies_path
  end

  private

  def find_company 
    @company = Company.find(params[:id])
  end

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
