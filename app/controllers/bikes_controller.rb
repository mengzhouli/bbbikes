class BikesController < ApplicationController
	before_action :set_params, only: :create
	skip_before_action :authenticate_user!, only: :index

  def index
    @bikes = Bike.all
    @brands = Bike::sorted_brands
  end

   def show
    @bike = Bike.find(params[:id])
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

  private

  def bike_params
    params.require(:bike).permit(:brand, :model, :bike_kind, :height_range, :location, :has_helmet, :has_lock, :has_lights, :has_basket, :has_bell, :description, photos: [])
  end

  def set_params
    @user = User.find(current_user.id)
  end
end
