class BookingsController < ApplicationController

  # POST request to /bookings.json
  def create
    # Before creating a new booking, let's check if the last booking is still active, if so let's destroy it.
    if @current_user.bookings.last.present?
      b = @current_user.bookings.last
      b.destroy if b.dropped_off.blank?
    end
    booking = Booking.create booking_params

    @current_user.bookings << booking

    respond_to do |format|
      format.html {}
      format.json { render json: {:booking => booking} }
    end
  end


  # GET request to /bookings/:id.json
  def show
    booking = Booking.find params[:id]

    if booking.trip.present?
      user = booking.trip.user
      respond_to do |format|
        format.html {}
        format.json { render json: {:booking => booking, :user => user} }
      end
    else
      respond_to do |format|
        format.html {}
        format.json { render json: {:booking => booking} }
      end
    end
  end


  # PUT/PATCH request to /bookings/:id.json
  def update
    # We are going to be making 3 requests to this method. The first to let the user now that their dog is now in a trip, the second to update the server that the dog has been picked up, and the third to let the database now the dog has been dropped off.
    booking = Booking.find params[:id]
    if booking.trip_id.nil?
      @current_user.trips.last.bookings << booking
      respond_to do |format|
        format.html {}
        format.json { render status: :created }
      end
    elsif booking.picked_up.nil?
      booking.update(picked_up: DateTime.current)

      respond_to do |format|
        format.html {}
        format.json { render status: :created }
      end
    else
      booking.update(dropped_off: DateTime.current)

      respond_to do |format|
        format.html {}
        format.json { render status: :created }
      end
    end
  end


  # DELETE request to /bookings/:id
  def destroy
    booking = Booking.find params[:id]
    booking.destroy

    respond_to do |format|
      format.html {}
      format.json { render status: :created }
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:latitude, :longtitude, :address)
  end

end
