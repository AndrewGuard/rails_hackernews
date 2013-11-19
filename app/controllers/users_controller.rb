class UsersController < ApplicationController 

  def new
    @user = User.new
  end

  def create
    p "got here"
    @user = User.create(params[:post])
    redirect_to("http://localhost:3000/")
  end

  def show
    @user = User.find(user[:email])
  end

end
