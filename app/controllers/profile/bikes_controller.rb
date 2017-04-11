class Profile::BikesController < ApplicationController

  def index
    @bikes = Bike.all
  end

end
