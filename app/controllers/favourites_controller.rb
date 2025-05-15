class FavouritesController < ApplicationController
  before_action :set_car, only: %i[new create]
  before_action :set_favourite, only: %i[new create]

  def index
    @favourites = Favourite.all
  end

  def new
  end

  def create
    @favourite.car = @car
    if @favourite.save
      redirect_to favourites_path, notice: 'Car was successfully added to your garage'
    else
      render 'cars/show', status: :unprocessable_entity
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to favourites_path
  end

  private

  def set_car
    @car = Car.find(params[:car_id])
  end

  def set_favourite
    @favourite = Favourite.new
  end
end
