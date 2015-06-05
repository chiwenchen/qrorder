class Order < ActiveRecord::Base

  belongs_to :menu
  belongs_to :table

  def total
    #some calculation
    binding.pry
  end

end