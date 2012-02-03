class UsersController < ApplicationController

  def create
    @user = User.new
    @image = User.new(params[:image])
    if @image.save
    end
  end
  
  def update
    @image = User.new(params[:image])
    if @image.save
    end
  end

end