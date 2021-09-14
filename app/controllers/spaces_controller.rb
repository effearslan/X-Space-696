class SpacesController < ApplicationController

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)

    if @space.save
      redirect_to @space, notice: 'space was successfully created.'
    else
      render :new
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_space
      @space = Space.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def space_params
      params.require(:space).permit(:name, :destination, :location, :travel_date :stars)
    end
end
