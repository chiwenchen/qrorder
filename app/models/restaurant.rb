class Restaurant < ActiveRecord::Base

  has_many :manus
  has_many :tables
  validates_presence_of :name

end