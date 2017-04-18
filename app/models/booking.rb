class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :meeting

  validates :user, presence: true
  #exclusion: { in: meeting.user, message: "You can not attend your own mentorship" }
  validates :meeting, presence: true
  validates :motivations, presence: true
<<<<<<< HEAD

  validate :mentor_cant_be_student

  private
  def mentor_cant_be_student
    if self.user == self.meeting.user
      errors.add(:user, " can not attend your own mentorship")
    end
  end
=======
>>>>>>> master
end
