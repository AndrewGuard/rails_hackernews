class SessionsController < ApplicationController 


  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:error] = "Error Message - Sign in FAIL"
      render 'new'
    end
  end

  def destroy
  end


  # def login
  #   user = User.find_by_email(params[:email])
  #   p user
  #   p"^^^^^^^^^^ IS THE USER ^^^^^^^^^^^^^^"
  #   session[:id] = user.id 
  #   redirect_to("http://localhost:3000/")
  # end

  # def logout
  #   session[:id].delete
  #   redirect_to 'home'
  # end

end
