module UsersHelper
  def gravatar_for user, options = {size: Settings.img_size}
    size = options[:size]
    if (user.avatar.nil? || user.avatar.empty?)
      gravatar_url = "https://goo.gl/ENZSYN"
    else
      gravatar_url = user.avatar
    end
    image_tag(gravatar_url, alt: user.name, class: "gravatar", size: size)
  end
end
