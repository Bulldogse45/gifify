class GifsController < ApplicationController

  def index
    @gif = Gif.new
    @user_session = UserSession.new
    @user = User.new
    @gifs = Gif.all
  end

  def new
    @gif = Gif.new
    respond_to do |format|
      format.js{
        render :partial=>"gifs/new", locals:{:gif=>@gif}
      }
    end
  end

  def create
    @gif = Gif.find(user_session_params)
    if @gif.save
      respond_to do |format|
        format.js{ }
      end
    else
      render text:"gif"
    end
  end

  def show
    respond_to do |format|
      format.js{

      }
    end
  end

end
