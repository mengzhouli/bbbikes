class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @bike = Bike.find(params[:bike_id])
    @review = Review.new
  end

  def create
    @bike = Bike.find(params[:bike_id])
    @review = Review.new(review_params)
    # @review.user = current_user
    @review.bike = @bike
    if @review.save
      redirect_to bike_path(@bike), notice: "Thank you for submitting a review"
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:stars, :content)
  end
end
