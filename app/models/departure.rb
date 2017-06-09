class Departure < ApplicationRecord

has_many :routes, :dependent => :destroy

validates :call_letters,  :presence => true, :uniqueness => true
validates :city,  :presence => true
validates :state,  :presence => true

end
