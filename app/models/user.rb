
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :meetings, dependent: :destroy
  has_many :booking
  after_create :send_welcome_email
  before_save :set_avatar_placeholder

  INDUSTRY = ["Airlines/Aviation",
"Alternative Dispute Resolution",
"Alternative Medicine",
"Animation",
"Apparel & Fashion",
"Architecture & Planning",
"Arts and Crafts",
"Automotive",
"Aviation & Aerospace",
"Banking",
"Biotechnology",
"Broadcast Media",
"Building Materials",
"Business Supplies and Equipment",
"Capital Markets",
"Chemicals",
"Civic & Social Organization",
"Civil Engineering",
"Commercial Real Estate",
"Computer & Network Security",
"Computer Games",
"Computer Hardware",
"Computer Networking",
"Computer Software",
"Construction",
"Consumer Electronics",
"Consumer Goods",
"Consumer Services",
"Cosmetics",
"Dairy",
"Defense & Space",
"Design",
"Education Management",
"E-Learning",
"Electrical/Electronic Manufacturing",
"Entertainment",
"Environmental Services",
"Events Services",
"Executive Office",
"Facilities Services",
"Farming",
"Financial Services",
"Fine Art",
"Fishery",
"Food & Beverages",
"Food Production",
"Fund-Raising",
"Furniture",
"Gambling & Casinos",
"Glass, Ceramics & Concrete",
"Government Administration",
"Government Relations",
"Graphic Design",
"Health, Wellness and Fitness",
"Higher Education",
"Hospital & Health Care",
"Hospitality",
"Human Resources",
"Import and Export",
"Individual & Family Services",
"Industrial Automation",
"Information Services",
"Information Technology and Services",
"Insurance",
"International Affairs",
"International Trade and Development",
"Internet",
"Investment Banking",
"Investment Management",
"Judiciary",
"Law Enforcement",
"Law Practice",
"Legal Services",
"Legislative Office",
"Leisure, Travel & Tourism",
"Libraries",
"Logistics and Supply Chain",
"Luxury Goods & Jewelry",
"Machinery",
"Management Consulting",
"Maritime",
"Market Research",
"Marketing and Advertising",
"Mechanical or Industrial Engineering",
"Media Production",
"Medical Devices",
"Medical Practice",
"Mental Health Care",
"Military",
"Mining & Metals",
"Motion Pictures and Film",
"Museums and Institutions",
"Music",
"Nanotechnology",
"Newspapers",
"Non-Profit Organization Management",
"Oil & Energy",
"Online Media",
"Outsourcing/Offshoring",
"Package/Freight Delivery",
"Packaging and Containers",
"Paper & Forest Products",
"Performing Arts",
"Pharmaceuticals",
"Philanthropy",
"Photography",
"Plastics",
"Political Organization",
"Primary/Secondary Education",
"Printing",
"Professional Training & Coaching",
"Program Development",
"Public Policy",
"Public Relations and Communications",
"Public Safety",
"Publishing",
"Railroad Manufacture",
"Ranching",
"Real Estate",
"Recreational Facilities and Services",
"Religious Institutions",
"Renewables & Environment",
"Research",
"Restaurants",
"Retail",
"Security and Investigations",
"Semiconductors",
"Shipbuilding",
"Sporting Goods",
"Sports",
"Staffing and Recruiting",
"Supermarkets",
"Telecommunications",
"Textiles",
"Think Tanks",
"Tobacco",
"Translation and Localization",
"Transportation/Trucking/Railroad",
"Utilities",
"Venture Capital & Private Equity",
"Veterinary",
"Warehousing",
"Wholesale",
"Wine and Spirits",
"Wireless", "Writing and Editing"]

  PROFILE = ["Choose your profile", "College Freshman", "College Senior", "Recent Graduate", "Junior Professional", "Professional", "Expert Professional"]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  devise :omniauthable, omniauth_providers: [:linkedin]

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :industry, presence: true, inclusion:{in: INDUSTRY}
  validates :profile, presence: true, inclusion:{in: PROFILE}
  validates :biography, presence: true

  def self.find_for_linkedin_oauth(auth)

    user_params = auth.slice(:provider, :uid)
    user_params.merge! auth.info.slice(:email, :first_name, :last_name)
    user_params[:avatar_url] = auth.info.image
    user_params[:linkedin_url] = auth.info.urls.public_profile
    user_params[:industry] =auth.info.industry
    user_params[:biography] = auth.extra.raw_info.summary
    user_params[:token] = auth.credentials.token
    user_params
    user_params = user_params.to_h

    user = User.where(provider: auth.provider, uid: auth.uid).first
    user ||= User.where(email: auth.info.email).first # User did a regular sign up in the past.
    if user
      #user.profile ||= "Choose your profile"
      user_params.delete(:biography)
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0,20]  # Fake password for validation

      user.save(validate: false)
    end

    return user
  end

  private

  def set_avatar_placeholder
      self.avatar_url = "avatar-placeholder.png" unless self.avatar_url.present?

  end

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end


end


