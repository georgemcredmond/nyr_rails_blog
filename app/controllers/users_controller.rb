class UsersController < ApplicationController

def index #shows all of the users
	@message = "Show all the Users of this blog!"
	@users=User.all
end

def new
		@message = "Please Enter the Following Info To Sign Up!!"
end

def create
		#does not have its own view
		#will receive data from the NEW route
		#and creates a new user in the db

    @new_user = User.create(firstname: params[:user][:firstname], lastname: params[:user][:lastname], username: params[:user][:username], password: params[:user][:password], favorite_player: params[:user][:favorite_player])

    if @new_user 
    	redirect_to url_for(:controller => :users, :action => :index)
    else
    	redirect_to url_for(:controller => :users, :action => :new)
  end

end

	def show
		puts params
		@id = params[:id]
		@user = User.find(@id)
		@message = "Introducing User #{@id}"
		
	end

	def edit
		@message = "Edit Any Profile Information You Wish Here."
		@user = User.find(params[:id])
	end

	def update
		#does not have its own view
		#receive data from the edit html form
		#update an existing User in the db
		@user = User.find(params[:id])
		@user.update({firstname: params[:user][:firstname], lastname: params[:user][:lastname], username: params[:user][:username], password: params[:password][:password], favorite_player: params[:user][:favorite_player]})

		if (@user)
      redirect_to url_for(:controller => :users, :action => :index)
    else
      redirect_to url_for(:controller => :users, :action => :edit)
    end
end

	def destroy
		#does not have its own view
		#removes an user from the database
		User.delete(params[:id])
		redirect_to url_for(:controller => :users, :action => :index)
	end

end

