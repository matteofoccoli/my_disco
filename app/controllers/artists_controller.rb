class ArtistsController < ApplicationController
  def create
    artist = Artist.new artist_params
    if artist.save
      redirect_to albums_path, notice: 'Artist successfully created'
    else
      @artist = Artist.new
      flash[:alert] = 'Error saving artist'
      render :new
    end
  end

  def new
    @artist = Artist.new
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end
end
