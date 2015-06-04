class Table < ActiveRecord::Base
  has_many :orders
  has_many :manus, through: :orders
  belongs_to :restaurant
end