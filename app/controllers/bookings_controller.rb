class BookingsController < ApplicationController
	
  def create
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.status = "pending"
    @booking.bike = @bike
  	if @booking.save
      redirect_to profile_bookings_path
    else
      render "bikes/show"
    end
  end

  def edit
    @booking = Booking.find(params[:bike_id])
  end

  def update
  end

  private

  def booking_params
    params[:booking][:start_time] = params[:booking][:start_time].to_datetime 
    params.require(:booking).permit(:start_time, :end_time)
  end
end