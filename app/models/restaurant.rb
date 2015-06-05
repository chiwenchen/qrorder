class Restaurant < ActiveRecord::Base

  has_many :menus
  has_many :tables
  validates_presence_of :name

end