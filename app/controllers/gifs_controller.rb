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

  def vote
    @vote = Vote.new(vote_params)
    @vote.user = current_user
    if @vote.save
      if @vote.downvote
        @vote.update(value:-1)
      else
        @vote.update(value:1)
      end
      update_score
      respond_to do |format|
        format.js{

        }
      end
    else
      respond_to do |format|
        format.js{
          render :action =>"vote-error"
        }
      end
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
  # 
  # def show
  #   respond_to do |format|
  #     format.js{
  #
  #     }
  #   end
  # end

  private

  def gif_params
    params.require(:gif).permit(:title, :url)
  end

  def vote_params
    params.permit(:gif_id, :downvote)
  end

  def update_score
    @gif = Gif.find(@vote.gif_id)
    @gif.update(score: @gif.score + @vote.value)
  end
end
