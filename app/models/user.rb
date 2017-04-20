class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :meetings, dependent: :destroy
  has_many :booking

  INDUSTRY = ["Accommodations", "Accounting", "Advertising", "Aerospace", "Agriculture & Agribusiness", "Air Transportation", "Apparel & Accessories", "Auto", "Banking", "Beauty & Cosmetics", "Biotechnology", "Chemical", "Communications", "Computer", "Construction", "Consulting", "Consumer Products", "Education", "Electronics", "Employment", "Energy", "Entertainment & Recreation", "Fashion", "Financial Services", "Fine Arts", "Food & Beverage", "Green Technology", "Health", "Information", "Information Technology", "Insurance", "Journalism & News", "Legal Services", "Manufacturing", "Media & Broadcasting", "Medical Devices & Supplies", "Motion Pictures & Video", "Music", "Pharmaceutical", "Public Administration", "Public Relations", "Publishing", "Rail", "Real Estate", "Retail", "Service", "Sports", "Technology", "Telecommunications", "Tourism", "Transportation", "Travel", "Utilities", "Video Game", "Web Services"]
  PROFILE = ["College Freshman", "College Senior", "Recent Graduate", "Junior Professional", "Professional", "Expert Professional"]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  devise :omniauthable, omniauth_providers: [:linkedin]

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :industry, presence: true, inclusion:{in: INDUSTRY}
  validates :profile, presence: true, inclusion:{in: PROFILE}
  validates :biography, presence: true


  def self.find_for_linkedin_oauth(auth)


    byebug
    puts auth

    # user_params = auth.slice(:provider, :uid)
    # user_params.merge! auth.info.slice(:email, :first_name, :last_name)
    # user_params[:linkedin_picture_url] = auth.info.image
    # user_params[:token] = auth.credentials.token
    # user_params[:token_expiry] = Time.at(auth.credentials.expires_at)
    # user_params = user_params.to_h

    # user = User.where(provider: auth.provider, uid: auth.uid).first
    # user ||= User.where(email: auth.info.email).first # User did a regular sign up in the past.
    # if user
    #   user.update(user_params)
    # else
    #   user = User.new(user_params)
    #   user.password = Devise.friendly_token[0,20]  # Fake password for validation
    #   user.save
    # end

    # return user
  end


end
