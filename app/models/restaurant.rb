class Restaurant < ActiveRecord::Base
  has_many :menus
  has_many :tables
  has_many :users
  validates_presence_of :name
end