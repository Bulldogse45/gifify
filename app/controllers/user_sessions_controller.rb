class UserSessionsController < ApplicationController

  def new
    @user_session = UserSession.new
    respond_to do |format|
      format.js{
        render :partial => "user_sessions/new"
      }
    end
  end

  def create
    @user_session = UserSession.create(user_session_params)
    if @user_session.save
      respond_to do |format|
        format.js{ }
      end
    else
      respond_to do |format|
        format.js{
        render :partial => "user_sessions/new"}
      end
    end
  end

  def destroy
    current_user_session.destroy
    respond_to do |format|
      format.js
    end
  end

  private

  def user_session_params
    params.require(:user_session).permit(:login, :password)
  end

end
