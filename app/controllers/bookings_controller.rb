class BookingsController

  def new
    respond_to do |format|
      format.html
      format.json
    end
  end

  # POST request to /bookings.json
  def create
    @booking = Booking.new booking_params

    @current_user << @booking

    respond_to do |format|
      format.html
      format.json { render json: @booking }
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:latitude, :longtitude)
  end

end
