<<<<<<< HEAD
class SpacesController < ApplicationController\

  def show
    @space = Space.find(params[:id])
  end

=======
class SpacesController < ApplicationController
  before_action :set_space, only: [:show, :edit, :update, :destroy]


  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @user = User.find(params[:user_id])
    @space.user = @user

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
      params.require(:space).permit(:name, :height, :width, :depth, :destination, :location, :travel_date )
    end
>>>>>>> 7a5a859ee3fca581430da48d3407ad9083458fed
end
