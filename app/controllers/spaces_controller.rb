class SpacesController < ApplicationController
  before_action :set_space, only: [:show, :edit, :update, :destroy]

  def index
    @spaces = Space.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user

    if @space.save
      redirect_to @space, notice: 'space was successfully created.'
    else
      render :new
    end
  end

  def update
    if @space.update(space_params)
      redirect_to @space
    else
      render :edit
    end

  end

  def destroy
    if @space.booking.present?
      @booking = @space.booking
      @booking.destroy
    end
    @space.destroy
    redirect_to dashboard_path
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_space
    @space = Space.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def space_params
    params.require(:space).permit(:name, :height, :width, :depth, :destination, :location, :travel_date, :price )
  end
end
