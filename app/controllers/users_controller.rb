class UsersController < ApplicationController

  def new
    @user = User.new
    respond_to do |format|
      format.js{
        render :partial => "users/new"
      }
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      respond_to do |format|
        format.js
      end
    else
      respond_to do |format|
        format.js {render :action => "error"}
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:login, :email, :password, :password_confirmation)
  end

end
