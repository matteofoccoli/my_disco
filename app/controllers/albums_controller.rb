class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def create
    album = Album.new album_params
    if album.save
      redirect_to albums_path, notice: 'Album successfully created'
    else
      @album = Album.new
      flash[:alert] = 'Error saving album'
      render :new
    end
  end

  private

  def album_params
    params.require(:album).permit(:title, :description, :release_date, :artist_id)
  end
end
