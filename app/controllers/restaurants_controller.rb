class RestaurantsController < ApplicationController

  before_action :require_user, only: [:show]
  before_action :require_chef, only: [:chef]
  before_action :require_admin, only: [:index]
  #before_action :my_restaurant?, only: [:show, :chef]
  def index
    if params[:search]
      @restaurants = Restaurant.find(:all, :conditions => ['title LIKE ?', "%#{params[:search]}%"])
    else
      @restaurants = Restaurant.all
    end
  end

  def show
    @restaurant = Restaurant.find_by(slug: params[:id])
  end

  def chef
    @restaurant = Restaurant.find_by(slug: params[:id])
    @tables = @restaurant.tables
    @tables.each do |table|
      table.orders
    end

  end
end