class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def edit
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.new(song_params)

    if @song.save
      redirect_to @song
    else
      render 'new'
    end
  end

  def update
    @song = Song.find(params[:id])

    if @song.update(song_params)
      redirect_to @song
    else
      render 'edit'
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy

    redirect_to '/songs'
  end

  def sort
    if params[:search]
      @songs = Song.where("artist LIKE ? OR name LIKE ? OR genre LIKE ? OR score LIKE ? OR rating LIKE ?",
      "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
    else
      @songs = Song.all
    end
  end

  private
  def song_params
    params.require(:song).permit(:artist, :name, :genre, :description, :album, :score, :rating)
  end

end
