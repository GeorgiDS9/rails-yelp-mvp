class ReviewsController < ApplicationController
  # GET restaurant/3/reviews/new
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end
  # POST /restaurants/3/reviews
  def create
    restaurant = Restaurant.find(params[:restaurant_id])
    # 1. assign the form inputs
    new_review = Review.new(review_params)
    # 2. assign the restaurant foreign key
    new_review.restaurant = restaurant
    if new_review.save # if when i call "save" it returns true
    else
      render :new
  end
end

private

def review_params
  params.require(:review).permit(:content)
end
