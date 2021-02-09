class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @Genre=Genre.find(params[:id])
  end

  def new
    
  end

  def create
    @Genre = Genre.new(genre_params)
    if @Genre.save
      redirect_to genres_path
    else 
      render 'new'

  end
    
  end

  def upgrade
  end

  def edit
  end

  def destroy
  end

  private 
  def genre_params
    params.require(:genre).permit(:name)
  end
end