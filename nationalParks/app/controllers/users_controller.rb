class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])
    if(params[:add_to_visited_parks] != nil)
      add
    elsif(params[:remove_from_visited_parks] != nil)
      remove
    end
  end

  def add
    already_added = false
    if(@user.visited_parks == nil)
      @user.visited_parks = ''
    end
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

  def remove
    temp_string = ''
    if(@user.visited_parks == nil)
      return
    end
    @user.visited_parks.split("; ").each do |park|
      if(park != params[:remove_from_visited_parks])
        if(temp_string = '')
          temp_string += park
        else
          temp_string += "; " + park
        end        
      end
    end
    @user.visited_parks = temp_string
    @user.save
  end

end
