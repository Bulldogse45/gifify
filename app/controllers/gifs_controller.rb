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
    @gif = Gif.new(gif_params)
    if @gif.save
      @new_gif = @gif
      respond_to do |format|
        format.js{
        }
      end
    else
      @new_gif = @gif
      respond_to do |format|
        format.js{
          render :action =>"error"
        }
      end
    end
  end

  def show
    respond_to do |format|
      format.js{

      }
    end
  end

  private

  def gif_params
    params.require(:gif).permit(:title, :url)
  end

end
