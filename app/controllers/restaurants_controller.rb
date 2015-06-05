class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def chef
    @restaurant = Restaurant.find(params[:id])
    @tables = @restaurant.tables
    @tables.each do |table|
      table.orders
      binding.pry
    end

  end
end