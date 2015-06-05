class Order < ActiveRecord::Base
  #attr_accessible :quantity
  belongs_to :menu
  belongs_to :table

end