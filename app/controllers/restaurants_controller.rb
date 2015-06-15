class RestaurantsController < ApplicationController
  def index
    if params[:search]
      @restaurants = Restaurant.find(:all, :conditions => ['title LIKE ?', "%#{params[:search]}%"])
    else
      @restaurants = Restaurant.all
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def chef
    @restaurant = Restaurant.find(params[:id])
    @tables = @restaurant.tables
    @tables.each do |table|
      table.orders
    end

  end
end