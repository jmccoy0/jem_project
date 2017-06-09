class Bookmark < ApplicationRecord

  belongs_to :user
  belongs_to :route

  validates :user_id,  :presence => true, uniqueness: {scope: :route_id, message: "already bookmarked this route"}
  validates :route_id,  :presence => true
  validates :date,  :presence => true

end
