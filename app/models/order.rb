class Order < ActiveRecord::Base

  belongs_to :menu
  belongs_to :table

  def self.total(orders)
    total_order = orders.where(selection: true).size - orders.where(selection: false).size
    if total_order >= 0
      total_order 
    else
      total_order = 0
    end
  end

end