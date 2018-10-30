class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def new

  end
  
  def create
  	@user = User.create(username: params[:username],email: params[:email],bio: params[:bio])
    if !@user.valid?
      redirect_to '/error'
    else
      redirect_to show_path username: @user.username
    end
  end

  def show
  	@username = User.find_by(username: params[:username]).username
  	@email = User.find_by(username: params[:username]).email
  	@bio = User.find_by(username: params[:username]).bio
  end

  def destroy
    @user.destroy
  end

  def connexion

  end

  def fail

  end

end
