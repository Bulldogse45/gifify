class GifsController < ApplicationController

  def index
    @gifs = Gif.all
  end

  def show
    respond_to do |format|
      format.js{

      }
    end
  end

end
