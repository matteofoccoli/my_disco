class SongsController < ApplicationController
  def create
    @song = Song.new song_params
    @album = Album.find params[:album_id]
    @song.album = @album
    if @song.save
      redirect_to album_path(params[:album_id]), notice: 'Song successfully created'
    else
      flash[:alert] = 'Error saving song'
      render :new
    end
  end

  def new
    @album = Album.find(params[:album_id])
    @song = Song.new
  end

  private

  def song_params
    params.require(:song).permit(:title, :duration, :album_id)
  end
end
