class Arrival < ApplicationRecord

  has_many :routes, :dependent => :destroy
  
end
