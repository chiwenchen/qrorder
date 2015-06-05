class MenusController < ApplicationController
  def new
    @menu = Menu.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @menu = Menu.new(strong_params)
    @menu.restaurant = Restaurant.find(params[:restaurant_id])

    if @menu.save
      redirect_to restaurant_path(@menu.restaurant)
    else
      render 'menus/new'
    end
  end

  def strong_params
    params.require(:menu).permit(:dish_name, :description, :photo, :restaurant_id)
  end
end