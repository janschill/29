class ApplicationController < ActionController::Base
  def current_user
    return unless session[:user_id]
    user = User.find_by_id(session[:user_id])
    if user.nil?
      session.delete(:user_id)
      return
    else
      @current_user ||= user
    end
  end
end
