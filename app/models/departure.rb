class Departure < ApplicationRecord

has_many :routes, :dependent => :destroy

end
