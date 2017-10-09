class BookingsController

  def new

  end

  # POST request to /bookings.json
  def create
    @booking = Booking.new booking_params

    raise @booking

    respond_to do |format|
      if @booking.save
        format.html { redirect_to @booking, notice: "Booking was successfully created." }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:address, :latitude, :longtitude)
  end

end
