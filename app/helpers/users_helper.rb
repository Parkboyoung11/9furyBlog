module UsersHelper
  def gravatar_for user, options = {size: Settings.img_size}
    size = options[:size]
    if File.exist?(Rails.root.to_s + "/app/assets/images/#{user.id}.jpg")
      gravatar_url = "#{user.id}.jpg"
      # gravatar_url = "https://goo.gl/38qDm2"
    else
      gravatar_url = "default.png"
      # gravatar_url = "https://goo.gl/hGxXPr"
    end
    image_tag(gravatar_url, alt: user.name, class: "gravatar", size: size)
  end
end
