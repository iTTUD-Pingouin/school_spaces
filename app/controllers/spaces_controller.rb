class SpacesController < ApplicationController


  def index
    @spaces = Space.all
    @spaces = @spaces.where(city: params[:city].downcase) if params[:city]
  end

  def show
    @space = Space.find(params[:id])
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    @space.save
    redirect_to space_path(@space)
  end

  def edit
    @space = Space.find(params[:id])
  end

  def update
    @space = Space.find(params[:id])
    @space.update(space_params)
    redirect_to space_path(@space)
  end

  private

  def space_params
    params.require(:space).permit(:city)
  end

end
