class UsersController < ApplicationController

  def new

  end
  
  def create
  	@user = User.create(username: params[:username],email: params[:email],bio: params[:bio])
  end

  def show
  	@username = User.find_by(username: params[:username]).username
  	@email = User.find_by(email: params[:email]).email
  	@bio = User.find_by(bio: params[:bio]).bio
  end

end
