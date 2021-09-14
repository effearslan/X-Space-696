class BookingsController < ApplicationController
<<<<<<< HEAD
<<<<<<< HEAD
  def show
    @space = Space.find(params[:id])
=======
=======
  before_action :set_booking, only: [:show, :update, :destroy]
>>>>>>> a96dd3a539c7c5c8105aa403ba6aeb162c113ce8

  def show
    @booking = Booking.find(params[:id])
>>>>>>> ac91d9e7d733bbd714ef9f3310806406d909aaa7
  end

  def new
    @booking = Booking.new
  end

  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user

    if @booking.save
      redirect_to @booking, notice: 'booking was successfully created.'
    else
      render :new
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_space
    @booking = Booking.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def space_params
    params.require(:space).permit(:status, :total_price)
  end
end
