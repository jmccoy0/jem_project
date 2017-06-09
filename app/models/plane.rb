class Plane < ApplicationRecord

  has_many :pilots, :dependent => :destroy
  has_many :trips, :dependent => :destroy
  belongs_to :photo
  has_many :flight_paths, :through => :trips, :source => :route

  validates :model,  :presence => true, :uniqueness => true
  validates :capacity,  :presence => true, :numericality => true
  validates :cabin_height,  :presence => true, :numericality => true
  validates :photo_id,  :presence => true


end
