class Review < ApplicationRecord

  belongs_to :user
  belongs_to :pilot

  validates :user_id,  :presence => true, uniqueness: {scope: [:comment, :pilot_id], message: "has already left this comment for this pilot" }
  validates :comment,  :presence => true
  validates :pilot_id,  :presence => true

end
