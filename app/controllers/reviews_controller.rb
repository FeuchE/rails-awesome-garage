class ReviewsController < ApplicationController
  before_action :set_car, only: %i[new create]

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.car = @car
    if @review.save
      redirect_to car_path(@car), notice: 'Review was successfully created'
    else
      render 'cars/show', status: :unprocessable_entity
    end
  end

  private

  def set_car
    @car = Car.find(params[:car_id])
  end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
