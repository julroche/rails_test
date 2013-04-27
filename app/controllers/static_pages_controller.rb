class StaticPagesController < ApplicationController

	def welcome
		@math = 10*10


		@last_user_name= User.last.name
		@last_user_email= User.last.email

		@new_user = User.new
	end

	def create

		puts "*********"
		puts params
		puts "*******"
	    @new_user = User.new(params[:user])
	    if @new_user.save
	    	flash[:success] = "Welcome home."
	      	redirect_to root_url
	    else
	    	flash[:error] = "This failed. Try again."
	    	redirect_to root_url

    	end
  
	end

end