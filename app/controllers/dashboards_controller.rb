class DashboardsController < ApplicationController
  def show
    @bookings = current_user.bookings
    @spaces = current_user.spaces
  end
end
