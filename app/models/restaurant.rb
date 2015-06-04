class Restaurant < ActiveRecord::Base

  has_many :manus
  validates_presence_of :name

end