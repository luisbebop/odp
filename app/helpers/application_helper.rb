# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def gravatar_url_for(email, size = 48)
    return 'avatar.gif' unless email
    "http://www.gravatar.com/avatar.php?size=#{size}&gravatar_id=#{Digest::MD5.hexdigest(email)}&default=http://#{request.host_with_port}#{ActionController::AbstractRequest.relative_url_root}/images/avatar.png"
  end
  
  def avatar_for(user, options = {:alt => user})
     image_tag gravatar_url_for(user), options
  end
    
end
