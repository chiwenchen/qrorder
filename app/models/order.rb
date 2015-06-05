class Order < ActiveRecord::Base

  belongs_to :manu
  belongs_to :table

  def total
    #some calculation
    binding.pry
  end

end