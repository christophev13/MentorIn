module MeetingsHelper
    INDUSTRY_IMAGES = {
      "Accommodations" => 'https://static.pexels.com/photos/308/hotel-sign-neon-letters.jpg',
      "Accounting" => "https://static.pexels.com/photos/53621/calculator-calculation-insurance-finance-53621.jpeg",
      "Animation" => "https://static.pexels.com/photos/34639/pexels-photo.jpg",
       "Aerospace" => "https://static.pexels.com/photos/34521/space-shuttle-lift-off-liftoff-nasa.jpg",
       "Agriculture & Agribusiness" => "https://static.pexels.com/photos/106162/wheat-wheat-spike-wheat-field-cornfield-106162.jpeg",
       "Air Transportation" => "https://static.pexels.com/photos/195477/pexels-photo-195477.jpeg",
       "Apparel & Accessories" => "https://static.pexels.com/photos/135620/pexels-photo-135620.jpeg",
       "Auto" => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Banking" => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Beauty & Cosmetics" => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Biotechnology" => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Chemical" => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Communications" => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Computer Software" => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Construction" => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Consulting" => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Consumer Products" => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Education" => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Electronics" => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Employment" => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Energy" => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Entertainment" => "https://static.pexels.com/photos/196643/pexels-photo-196643.jpeg",
       "Fashion" => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Financial Services" => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Fine Arts" => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Food & Beverage" => "https://static.pexels.com/photos/196643/pexels-photo-196643.jpeg",
       "Green Technology" => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Health" => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Information" => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Information Technology" => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Insurance" => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Journalism & News" => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Legal Services" => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Manufacturing"  => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Media & Broadcasting"  => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Medical Devices & Supplies"  => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Motion Pictures & Video"  => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Music"  => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Pharmaceutical"  => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Public Administration"  => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Public Relations"  => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Publishing"  => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Rail"  => 'https://static.pexels.com/photos/308/hotel-sign-neon-letters.jpg',
       "Real Estate"  => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Retail"  => 'https://static.pexels.com/photos/5698/healthy-market-shop-eco.jpg',
       "Service"  => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Sports"  => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Technology"  => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Telecommunications"  => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Tourism"  => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Transportation/Trucking/Railroad"  => "https://static.pexels.com/photos/5117/people-feet-train-travelling.jpeg",
       "Travel"  => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Utilities"  => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Video Game"  => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",
       "Web Services"  => "https://static.pexels.com/photos/239898/pexels-photo-239898.jpeg",

    }


  # def avatar_url?(user)
  #    if user.avatar_url.present?
  #       user.avatar_url
  #    else
  #     #  image_path('avatar-placeholder.png')
  #      "https://api.adorable.io/avatars/100/abott@adorable.io.png "
  #    end
  # end

  def set_industry_image(user)
      if user.industry.present?
      url = INDUSTRY_IMAGES[user.industry]
    else
      'https://static.pexels.com/photos/53621/calculator-calculation-insurance-finance-53621.jpeg'
    end
  end
end
