class SongsController < ApplicationController
  before_action :set_billboard
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  # before_action belongs_to artist too...  :set_artist?

  def index
    @songs = @billboard.songs
  end

  def show
  end

  def new
    @song = @billboard.songs.new(song_params)
  end

  def create
    @song = @billboard.songs.new(song_params)
    if @song.save
      redirect_to billboard_path(@billboard) 
    else
      render :new
    end
  end 

  def edit
  end

  def update
    if @song.update(song_params)
      redirect_to billboard_path(@billboard)
    else
      render :edit
    end
  end 

  def destroy 
  end 

  private
    def song_params
      params.require(:song).permit(:title)
    end

    def set_billboard
      @billboard = Billboard.find(params[:billboard_id])
    end

    def set_song
      @song = @billboard.songs.find(params[:id])
    end
end
