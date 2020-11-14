class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  # callback for facebook
  # def facebook
  #   callback_for(:facebook)
  # end

  def facebook
    callback_from :facebook
  end
  

  # callback for twitter
  # def twitter
  #   callback_for(:twitter)
  # end


  def twitter
    callback_from :twitter
  end
  
  # callback for google
  # def google_oauth2
  #   callback_for(:google)
  # end
  
  def google_oauth2
    callback_from :google
  end
  
  
  # common callback method
  # def callback_for(provider)
  #   @user = User.from_omniauth(request.env["omniauth.auth"])
  #   if @user.persisted?
  #     set_flash_message(:notice, :success, kind: "#{provider}".capitalize) if is_navigational_format?
  #     sign_in_and_redirect @user, event: :authentication
  #   else
  #     session["devise.#{provider}_data"] = request.env["omniauth.auth"].except("extra")
  #     redirect_to new_user_registration_url
  #   end
  # end


  # def failure
  #   redirect_to root_path
  # end

  private
  def callback_from(provider)
    provider = provider.to_s

    @user = User.find_for_oauth(request.env['omniauth.auth'])

    if @user.persisted?
      print("persisted true")
      flash[:notice] = I18n.t('devise.omniauth_callbacks.success', kind: provider.capitalize)
      sign_in_and_redirect @user, event: :authentication
    else
      print("persisted false")
      session["devise.#{provider}_data"] = request.env['omniauth.auth']
      redirect_to controller: 'sessions', action: 'new'
    end
  end

end