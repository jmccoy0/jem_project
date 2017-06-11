class Photo < ApplicationRecord

  has_one :pilot
  has_one :plane

    validates :source,  :presence => true
    validates :caption,  :presence => true

end
