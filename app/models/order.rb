class Order < ActiveRecord::Base

  belongs_to :manu
  belongs_to :table

  def total
    #some calculation
  end

end