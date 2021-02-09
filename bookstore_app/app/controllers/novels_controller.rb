class NovelsController < ApplicationController
  def index
    @novels = Novel.all
    @genres = Genre.all
  end

  def show
    @novel=Novel.find(params[:id])
    
  end

  def new
    
  end

  def create
    @novel = Novel.new(novel_params)
    if @novel.save
      redirect_to novels_path
    else 
      render 'new'

  end
    
  end

  def upgrade
    @novel = Novel.find(params[:id])
    if @novel.update(novel_params)
      redirect_to novels_path
    else
      render 'edit'
  end
  end

  def edit
    @novel = Novel.find(params[:id])
  end

  def destroy
    @novel = Novel.find(params[:id])
    @novel.destroy
    redirect_to novel_path
  end

  private 
  def novel_params
    params.require(:novel).permit(:title, :genre_id, :author_id, :publisher_id, :isbn, :price, :publication, :format, :description, :pages)
  end
end
