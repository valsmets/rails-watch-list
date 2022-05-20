class ListsController < ApplicationController
  def index
    @lists = List.all
  end
  def show
    @list = List.find(params[:id])
    # @bookmark = Bookmark.find(movie_id: movie.id)
  end
  def new
    @list = List.new
  end
  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path(@list)
    else
      render :new
    end
  end
  def destroy
    @list = List.find(params[:id])
    @list.destroy

    redirect_to lists_path(@list)
  end
  private

  def list_params
    params.require(:list).permit(:name)
  end
  
end
