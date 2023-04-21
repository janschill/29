class RootController < ApplicationController
  def start
  end

  def index
    @redact_emojis = ["🐶","🐱","🐭","🐰","🦊","🐻","🐼","🐻‍❄️","🐨","🐯","🦁","🐮","🐷","🐸","🐵","🐥","🦉","🐙"]
    @going_users = User.where(going: true)
    @not_going_users = User.where(going: false)
    @undecided_users = User.where(going: nil)
  end
end
