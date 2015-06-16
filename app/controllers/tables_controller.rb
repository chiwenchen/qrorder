class TablesController < ApplicationController
  def show
    @table = Table.find(params[:id])
    @restaurant = @table.restaurant
    @order = Order.where(table: @table)
  end


  def order
    table = Table.find(params[:id])
    dish = Menu.find(params[:menu])
    order = Order.find_by(menu_id: params[:menu], table_id: params[:id])

    if params[:selection] == 'order'
      if order.nil?
        order = Order.new(menu_id: params[:menu], table_id: params[:id], quantity: 1)
      else
        order.quantity += 1
      end
    elsif params[:selection] == 'disorder'
        order.quantity -= 1 if !order.nil?
    end
    Order.delete(order.id) if !order.nil? && order.quantity == 0 
    order.save if !order.nil?
    redirect_to :back
  end
end
