class OrdersController < ApplicationController
  def change_order_status
    order = Order.find(params[:id])
    order.status = true
    order.save
    redirect_to :back
  end
end