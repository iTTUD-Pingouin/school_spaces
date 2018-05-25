class SpacesController < ApplicationController

  before_action :set_space, only: [:show, :edit, :update, :destroy]

  def index
    @spaces = policy_scope(Space)

    @spaces = policy_scope(Space).near(params[:address]) if params[:address]
    @spaces = Space.all if params[:address].blank?



    @spaces_with_latlong =  Space.where.not(latitude: nil, longitude: nil)
    @markers = @spaces_with_latlong.map do |space|
          {
            lat: space.latitude,
            lng: space.longitude#,
            # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
          }
        end
  end


  def show
    @review = Review.new
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

  def set_space
    @space = Space.find(params[:id])
    authorize @space
  end

  def space_params
    params.require(:space).permit(:title, :address, :photo)
  end

end
