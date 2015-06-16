class TablesController < ApplicationController
  def show
    @table = Table.find(params[:id])
    @restaurant = @table.restaurant
    session[:order] = {}
    @order = nil
    session[:table] = @table.id
  end


  def order
    @table = Table.find(params[:id])
    @restaurant = @table.restaurant
    #dish = Menu.find(params[:menu])
    @order = session[:order][params[:menu]]

    if params[:selection] == 'order'
      if @order.nil?
        session[:order][params[:menu]] = 1
      else
        session[:order][params[:menu]] += 1
      end
    else
      session[:order][params[:menu]] -= 1 if !@order.nil?
    end

    session[:order].delete(params[:menu]) if session[:order][params[:menu]] == 0 
    render 'show'
  end

  def place_order
    table = Table.find(params[:id])
    restaurant = table.restaurant
    session[:order].each do |menu, qty|
      Order.create(table_id: session[:table], menu_id: menu, quantity: qty)
    end
    session[:order] = {}
    flash[:success] = "You placed a order"
    redirect_to restaurant_table_path(restaurant, table)
  end
end

# session[:table] = params[:id]
# session[:order] = {[1,1]: 1}

