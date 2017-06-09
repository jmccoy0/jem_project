class Route < ApplicationRecord

  has_many :bookmarks, :dependent => :destroy
  has_many :trips, :dependent => :destroy
  belongs_to :departure
  belongs_to :arrival
  has_many :interested_clients, :through => :bookmarks, :source => :user
  has_many :possible_planes, :through => :trips, :source => :plane

  validates :departure_id,  :presence => true, uniqueness: {scope: :arrival_id, message: "has already been listed for this arrival" }
  validates :arrival_id,  :presence => true


end
