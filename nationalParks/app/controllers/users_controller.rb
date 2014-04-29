class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])
  end

  def avp
    @user = current_user
    @park = Park.find(params[:id])
    current_user.visited_parks += ", " + @park
    #@user.visited_parks += (", " + @park.parkname + ": " + @park.location)
  end

end
