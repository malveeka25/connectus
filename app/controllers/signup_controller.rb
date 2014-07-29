class SignupController < ApplicationController
	def create_new_user
		hash = params[:user]
		@new_user = User.create(hash)
		session[:user_id] = new_user.id
		redirect_to(:controller => "home", :action => 'home_page')
	end	
end


