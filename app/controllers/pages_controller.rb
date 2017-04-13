class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    bike_kinds = []
    Bike.all.each do |bike|
      bike_kinds << bike.bike_kind
    end
    @bike_kinds = bike_kinds.uniq.sort

  height_ranges = []
    Bike.all.each do |bike|
      height_ranges << bike.height_range
    end
    @height_ranges = height_ranges.uniq.sort
  end
end
