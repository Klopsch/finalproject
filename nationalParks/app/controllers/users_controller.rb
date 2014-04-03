class UsersController < ApplicationController
  def show
    id = params[:email]
    @user = Users.find(email)
  end
end
