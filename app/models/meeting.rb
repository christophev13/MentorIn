class Meeting < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :nb_max_participant, presence: true, :inclusion => { :in => 1..5 }
  validates :local, presence: true
  validates :date, presence: true
  validate :future_event

  # method for seach
  def self.search(search)
    where("title ILIKE (?) OR description ILIKE (?)", "%#{search}%", "%#{search}%")
    # where("description ILIKE ?", "%#{search}%")
  end

  private

  def future_event
    errors.add(:date, "You can't create a meeting in the past. People can't time travel yet.") if date <= Time.now
  end

end
