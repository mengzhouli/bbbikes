class BikesController < ApplicationController
  def index
    @bikes = Bike.all
    # flash[:alert] = "You are on the Bikes main page"
  end

end
