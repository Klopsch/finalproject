class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])
    if(params[:add_to_visited_parks] != nil)
      @user.visited_parks += (", " + params[:add_to_visited_parks])
      @user.save
    end
  end

end
