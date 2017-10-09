class BookingsController < ApplicationController

  def new
    respond_to do |format|
      format.html
      format.json
    end
  end

  # POST request to /bookings.json
  def create
    # Before creating a new booking, let's check if the last booking is still active, if so let's destroy it.
    if @current_user.bookings.last.present?
      b = @current_user.bookings.last
      b.destroy if b.dropped_off.blank?
    end
    @booking = Booking.create booking_params

    @current_user.bookings << @booking

    respond_to do |format|
      format.html {}
      format.json { render json: @booking }
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:latitude, :longtitude, :address)
  end

end
