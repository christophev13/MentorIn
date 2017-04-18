class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :meeting

  validates :user, presence: true
  #exclusion: { in: meeting.user, message: "You can not attend your own mentorship" }
  validates :meeting, presence: true
  validates :motivations, presence: true
end
