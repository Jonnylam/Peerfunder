class UsersController < ApplicationController
  skip_before_filter :require_login, only: [:index, :new, :create]
  def index
  end

  def new
      @user = User.new
  end

  def create
    @user = User.new(params[:user])
 
    respond_to do |format|
      if @user.save
        auto_login(@user)
        # Tell the UserMailer to send a welcome email after save
        UserMailer.welcome_email(@user).deliver_later
 
        format.html { redirect_to(@user, notice: 'User was successfully created.') }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
      if @product.update_attributes(user_params)
        redirect_to users_path(@user)
      else
        render :edit
      end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :biography, :experience, :accreditation, :profile_photo_url, :location, :dob)
  end
end
