class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author=Author.find(params[:id])
  end

  def new
    
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to authors_path
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
  def author_params
    params.require(:author).permit(:fname, :lname, :bio)
  end
end

