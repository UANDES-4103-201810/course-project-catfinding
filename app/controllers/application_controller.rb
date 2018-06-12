class ApplicationController < ActionController::Base
  def after_sign_up_path_for
    redirect_to edit_user_path(@user)
  end
end

