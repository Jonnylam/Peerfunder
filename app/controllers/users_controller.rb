class UsersController < ApplicationController
  skip_before_filter :require_login, only: [:index, :new, :create]
  def index
  end

  def new
      @user = User.new
  end

  def create
    @user = User.new(user_params)
 
     if @user.save
      UserMailer.welcome_email(@user).deliver_now
      auto_login(@user)
      redirect_to users_url, notice: "Signed up!"
    else
      render "new"
    end
  end


  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    @user.save
  end

  def update
    @user = User.find(params[:id])
      if @user.update_attributes(user_params)
        redirect_to users_path(@user)
      else
        render :show
      end
      
      @user.save

      # if @user.save
      #   redirect_to @user
      # else
      #     puts "this aint working"
      # end
      
  end

  #   @user.each do |user|
  #     if user.update_attributes(user_params)
  #        user.save
  #        redirect_to users_path(@user)
  #     else 
  #        render :show
  #     end
  #   end


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
