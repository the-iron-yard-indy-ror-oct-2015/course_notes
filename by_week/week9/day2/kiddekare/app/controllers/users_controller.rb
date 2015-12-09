class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.password_confirmation = @user.password
    if @user.save
      redirect_to admin_root_path
    else
      render :new
    end
  end

  def customer_create
    @user = User.new(user_params)
    @user.password_confirmation = @user.password
    @user.role = "daycare_administrator"
    if @user.save
      redirect_to new_subscription_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :name, :bio)
  end

end
