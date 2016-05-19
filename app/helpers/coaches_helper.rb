module CoachesHelper

      # Returns the Gravatar for the given user.
  def gravatar_for(coach)
    gravatar_id = Digest::MD5::hexdigest(coach.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: coach.name, class: "gravatar")
  end




end
