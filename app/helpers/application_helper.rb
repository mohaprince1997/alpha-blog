module ApplicationHelper
  def gravatar_for(user,options={size: 80,classes: ""})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    classes = options[:classes]
    gravatar_url= "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url,class: "rounded-circle #{classes}")
    
  end
end
