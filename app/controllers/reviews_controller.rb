class ReviewsController < ApplicationController

  def index
    @reviews = Restaurants(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(restaurant_params)
    @review.save
    redirect_to restaurants_path
  end

end
