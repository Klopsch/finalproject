class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])
  end

  def avp
    @user = current_user
    @user.visited_parks += (current_park.parkname + ": " + current_park.location)
  end

end
