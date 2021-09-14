class BookingsController < ApplicationController
<<<<<<< HEAD
  def show
    @space = Space.find(params[:id])
=======

  def show
    @booking = Booking.find(params[:id])
>>>>>>> ac91d9e7d733bbd714ef9f3310806406d909aaa7
  end
end
