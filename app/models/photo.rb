class Photo < ApplicationRecord

  has_one :pilot
  has_one :plane

    validates :source,  :presence => true

end
