class Pilot < ApplicationRecord

  belongs_to :plane
  belongs_to :photo
  has_many :reviews, :dependent => :destroy

  validates :name,  :presence => true, uniqueness: {scope: :rank, message: "has already been included on the team"}
  validates :rank,  :presence => true
  validates :bio,  :presence => true
  validates :photo_id,  :presence => true
  validates :plane_id,  :presence => true

end
