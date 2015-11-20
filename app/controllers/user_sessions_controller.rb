class UserSessionsController < ApplicationController

  # def new
  #   @user_session = UserSession.new
  #   respond_to do |format|
  #     format.js{
  #
  #     }
  # end
  def new
    @user_session = UserSession.new
    respond_to do |format|
      format.js{
        render :partial => "user_sessions/new"
      }
    end
  end

  def create
    @user_session = UserSession.find(user_session_params)
    if @user_session.save
      respond_to do |format|
        format.js{ }
      end
    else
      @text = ""
      render text:"user_session"
    end
  end

  private

  def user_session_params
    params.require(:user_session).permit(:login, :password)
  end

end
