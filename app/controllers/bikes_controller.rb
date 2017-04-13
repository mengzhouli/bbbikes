class BikesController < ApplicationController
	before_action :set_params, only: :create
  	before_action :set_bike_params, only: [:edit, :update]
	skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # @bikes = Bike.where.not(latitude: nil, longitude: nil)
    @bikes = Bike.all
    # only grab bikes where they have a valid address
    # flash[:alert] = "You are on the Bikes main page"
    @hash = Gmaps4rails.build_markers(@bikes) do |bike, marker|
      marker.lat bike.latitude
      marker.lng bike.longitude
      # marker.infowindow render_to_string(partial: "/bikes/map_box", locals: { bike: bike })
      # need to build map box partial for the above code to work
    end
  end

   def show
    @bike = Bike.find(params[:id])
    @alert_message = "You are viewing a #{@bike.brand} bike"
    @bike_coordinates = { lat: @bike.latitude, lng: @bike.longitude }
    @booking = Booking.new
   end

  def new
  	@bike = Bike.new
  end

  def create
  	@bike = Bike.new(bike_params)
  	@bike.user = @user
  	if @bike.save
      redirect_to profile_bikes_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @bike.update(bike_params)
      redirect_to bike_path(@bike)
    else
      render :edit
    end
  end

  private

  def bike_params
    params.require(:bike).permit(:brand, :model, :bike_kind, :height_range, :location, :has_helmet, :has_lock, :has_lights, :has_basket, :has_bell, :description, photos: [])
  end

  def set_params
    @user = User.find(current_user.id)
  end

  def set_bike_params
    @bike = Bike.find(params[:id])
  end

end
