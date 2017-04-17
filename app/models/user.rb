class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :meetings

  INDUSTRY = ["Accommodations", "Accounting", "Advertising", "Aerospace", "Agriculture & Agribusiness", "Air Transportation", "Apparel & Accessories", "Auto", "Banking", "Beauty & Cosmetics", "Biotechnology", "Chemical", "Communications", "Computer", "Construction", "Consulting", "Consumer Products", "Education", "Electronics", "Employment", "Energy", "Entertainment & Recreation", "Fashion", "Financial Services", "Fine Arts", "Food & Beverage", "Green Technology", "Health", "Information", "Information Technology", "Insurance", "Journalism & News", "Legal Services", "Manufacturing", "Media & Broadcasting", "Medical Devices & Supplies", "Motion Pictures & Video", "Music", "Pharmaceutical", "Public Administration", "Public Relations", "Publishing", "Rail", "Real Estate", "Retail", "Service", "Sports", "Technology", "Telecommunications", "Tourism", "Transportation", "Travel", "Utilities", "Video Game", "Web Services"]
  PROFILE = ["College Freshman", "College Senior", "Recent Graduate", "Junior Professional", "Professional", "Expert Professional"]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :industry, presence: true, inclusion:{in: INDUSTRY}
  validates :profile, presence: true, inclusion:{in: PROFILE}
  validates :biography, presence: true
end
