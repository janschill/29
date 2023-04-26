class RootController < ApplicationController
  def start
    user = User.find_by_id(params[:id])
    session[:user_id] = user.id unless user.nil?
  end

  def index
    @current_user = current_user
    @going_users = User.where(going: true)
    @undecided_users = User.where(going: nil)
    @messages = Message.all
  end
end
