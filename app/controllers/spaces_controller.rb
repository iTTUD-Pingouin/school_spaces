class SpacesController < ApplicationController

  before_action :set_space, only: [:show, :edit, :update, :destroy]

  def index
    @spaces = policy_scope(Space)
    @spaces = @spaces.where(city: params[:city].downcase) if params[:city]
  end

  def show
  end

  def new
    @space = Space.new
    authorize @space
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    authorize @space
    @space.save
    redirect_to space_path(@space)
  end

  def edit
  end

  def update

    @space.update(space_params)
    redirect_to space_path(@space)
  end

  def destroy
    @space.destroy
    redirect_to spaces_path
  end

  private

  def space_params
    params.require(:space).permit(:city)

  end

  def set_space
    @space = Space.find(params[:id])
    authorize @space
  end

end
