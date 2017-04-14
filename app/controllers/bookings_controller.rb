class BookingsController < ApplicationController
	
  def create
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.status = "pending"
    @booking.bike = @bike
  	if @booking.save
      redirect_to profile_bookings_path, notice: 'You have requested to book a bike!'
    else
      render "bikes/show"
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    @bike = Bike.find(params[:bike_id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.bike.user == current_user
    #if the owner of the bike is the current user (aka owner updating status)
      @booking.status = "confirmed"      
      @booking.save
      redirect_to profile_bookings_path, notice: "You have confirmed a booking request for one of your bikes"
    else
    # options for updating dates for the renter
      if @booking = Booking.update(booking_params)
        redirect_to profile_bookings_path, notice: "You have changed the dates of your booking"
      else
        render :edit
      end
    end
    # need flash message about whether the confirmation went through
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to profile_bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end