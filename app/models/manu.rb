class Manu < ActiveRecord::Base

  belongs_to :restaurant
  has_many :order
  has_many :tables, through: :orders

end