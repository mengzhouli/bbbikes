class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @bike_kinds = Bike.all.distinct(:bike_kind).pluck(:bike_kind)
    @height_ranges = Bike.all.distinct(:height_range).pluck(:height_range)
  end
end
