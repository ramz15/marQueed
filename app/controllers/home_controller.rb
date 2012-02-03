class HomeController < ApplicationController

  def index
    @title = "Marqueed"
    @user = current_user
    @images = Image.all
    @image = Image.new
  end

  def login
    @title = "Login"
    @user = User.new
  end

  def signup
    @title = "Registration"
  end

end
