class TablesController < ApplicationController
  def show
    @table = Table.find(params[:id])
    @restaurant = @table.restaurant
    @order = Order.where(table: @table)

  end

  def order
    table = Table.find(params[:id])
    dish = Manu.find(params[:manu])
    order = Order.create(table: table, manu: dish, selection: params[:selection])
    redirect_to :back
  end
end
