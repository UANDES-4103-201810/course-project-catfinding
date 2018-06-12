class CallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @user = User.from_omniauth(request.env["omniauth.auth"])
    sign_in @user
    if @user.phone.nil? or @user.phone.empty?
      redirect_to edit_user_path (@user)
    else
      redirect_to @user
  end
  end
  end
