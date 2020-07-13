class SigninController < ApplicationController
	def signin
		
	end
	def create
		user = User.new
		user.first_name =params[:first_name]
		user.last_name =params[:last_name]
		user.email = params[:email]
		user.save
		
		redirect_to :root
	end
end
