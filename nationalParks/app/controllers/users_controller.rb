class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])
    if(params[:add_to_visited_parks] != nil)
      already_added = false
      @user.visited_parks.split("; ").each do |park|
        if(park == params[:add_to_visited_parks])
          already_added = true
        end
      end
      if(!already_added)
        if(@user.visited_parks == '')
          @user.visited_parks += (params[:add_to_visited_parks])
        else
          @user.visited_parks += ("; " + params[:add_to_visited_parks])
        end
        @user.save
      end
    end
  end

end
