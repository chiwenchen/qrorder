class TablesController < ApplicationController
  def show
    @table = Table.find(params[:id])
    @restaurant = @table.restaurant
  end

  def order
    binding.pry
  end
end