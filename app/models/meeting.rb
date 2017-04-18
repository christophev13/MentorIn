class Meeting < ApplicationRecord
  belongs_to :user
  has_many :booking

  validates :title, presence: true
  validates :description, presence: true
  validates :nb_max_participant, presence: true, :inclusion => { :in => 1..5 }
  validates :local, presence: true
  validates :date, presence: true

end
