class TripsController < ApplicationController

  def create
    @trip = Trip.create trip_params
    @current_user.trips << @trip

    respond_to do |format|
      format.html {}
      format.json { render json: {:bookings => Booking.all} }
    end
  end

  private
  def trip_params
    params.require(:trip).permit(:address, :latitude, :longtitude)
  end

end
