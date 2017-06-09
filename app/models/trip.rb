class Trip < ApplicationRecord

  belongs_to :route
  belongs_to :plane

  validates :plane_id,  :presence => true, uniqueness: {scope: :route_id, message: "has already been recorded for this route"}
  validates :route_id,  :presence => true

end
