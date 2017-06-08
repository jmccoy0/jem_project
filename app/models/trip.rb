class Trip < ApplicationRecord

  belongs_to :route
  belongs_to :plane
  
end
