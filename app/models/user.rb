class User < ActiveRecord::Base
  has_secure_password validations: false
  belongs_to :restaurant
end