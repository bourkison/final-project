class PagesController < ApplicationController

  def home
    if @current_user.present?
      @booking = Booking.new
    end
    render :home
  end

end
