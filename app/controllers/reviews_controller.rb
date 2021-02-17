class ReviewsController < ApplicationController
  # GET restaurant/3/reviews/new
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
  end
end
