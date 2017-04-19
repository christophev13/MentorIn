class Meeting < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :nb_max_participant, presence: true, :inclusion => { :in => 1..5 }
  validates :local, presence: true
  validates :date, presence: true

  # method for seach
  def self.search(search)
    where("title LIKE ?", "%#{search}%")
    # where("title ILIKE ?", "%#{search}%")
    # where("description ILIKE ?", "%#{search}%")
  end
end
