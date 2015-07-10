class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_parameters)
    if @user.save
      flash[:notice] = "You signed up successfully"
      flash[:color] = "valid"
    else
      flash[:notice] = "Form is invalid"
      flash[:color] = "invalid"
    end
    render "new"
  end
  private

  def user_parameters
    params.require(:user).permit(:password, :email, :password, :password_confirmation)
  end
end
