class Pilot < ApplicationRecord

  belongs_to :plane
  belongs_to :photo
  has_many :reviews, :dependent => :destroy
  
end
