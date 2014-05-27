class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def show
    @album = Album.find(params[:id])
  end

  def create
    album = Album.new album_params

    begin
      uploaded_cover_image = params[:album][:cover_image]
      cover_image = "#{Time.now.to_i}_#{uploaded_cover_image.original_filename}"
      cover_image_file_path = Rails.root.join('public', 'uploads', cover_image)
      File.open(cover_image_file_path, 'wb') do |file|
        file.write(uploaded_cover_image.read)
      end
      album.cover_image = cover_image.to_s
    rescue
      @album = Album.new
      flash[:alert] = 'Invalid image'
      render :new
    end

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
    params.require(:album).permit(:title, :description, :release_date, :artist_id, :cover_image)
  end
end
