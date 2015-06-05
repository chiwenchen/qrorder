class TablesController < ApplicationController
  def show
    @table = Table.find(params[:id])
    @restaurant = @table.restaurant
    @order = Order.where(table: @table)

  end

  def order
    table = Table.find(params[:id])
    dish = Menu.find(params[:menu])
    order = Order.find(menu_id: params[:menu], table_id: params[:id])
    binding.pry
    if order.nil?
      Order.create(menu_id: params[:menu], table_id: params[:id], quantity: 1)
    else
      if params[:selection] == 'order'
        order.quantity += 1
      else
        order.quantity = order.quantity - 1
      end
    order.quantity = 0 if order.quantity < 0
    end
    order.save
    redirect_to :back
  end
end
