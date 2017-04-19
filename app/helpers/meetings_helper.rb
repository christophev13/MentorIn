module MeetingsHelper

  def avatar_url?(user)
   if user.avatar_url?
      user.avatar_url
   else
     "https://api.adorable.io/avatars/100/abott@adorable.io.png "
   end
  end
end
