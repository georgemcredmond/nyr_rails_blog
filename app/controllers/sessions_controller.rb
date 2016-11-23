class SessionsController < ApplicationController
  

  def new
  end

  def create
        user = User.find_by(username: params[:session][:username])
    if user && user.password === (params[:session][:password])
    	# Log the user in and redirect to the user's show page.
    log_in user
    redirect_to user
    else
       flash.now[:notice] = 'Invalid username/password combination'
      render 'new'
  end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

end
