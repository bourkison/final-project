class BookingsController

  def new

  end

  # POST request to /bookings.json
  def create
    @booking = Booking.new booking_params

    respond_to do |format|
      format.html
      format.json
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:address, :latitude, :longtitude)
  end

end
