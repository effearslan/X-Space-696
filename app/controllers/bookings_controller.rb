class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :update, :destroy, :approve, :decline]

  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new
    @space = Space.find(params[:space_id])
    @booking.user = current_user
    @booking.space = @space
    @booking.total_price = @space.price + 10
    @booking.status = "Pending"
    if @booking.save
      redirect_to spaces_path, notice: "Booking was successfully created."
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path
  end

  def approve
    @booking.status = 'Approved'
    @booking.save
    redirect_to dashboard_path, notice: 'Booking approved'
  end

  def decline
    @booking.status = 'Declined'
    @booking.save
    redirect_to dashboard_path, notice: 'Booking declined'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_booking
    @booking = Booking.find(params[:id])
  end


  # Only allow a trusted parameter "white list" through.
  # def booking_params
  #   params.require(:booking).permit(:status, :total_price)
  # end
end
