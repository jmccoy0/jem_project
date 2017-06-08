class Plane < ApplicationRecord

  has_many :pilots, :dependent => :destroy
  has_many :trips, :dependent => :destroy
  belongs_to :photo
  has_many :flight_paths, :through => :trips, :source => :route
  
end
