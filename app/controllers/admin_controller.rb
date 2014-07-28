class AdminController < ApplicationController

def login_attempt
	hash = params[:user]
	if (hash[:username] == "admin" && hash[:password] == "admin123")
		redirect_to(:controller => "signup", :action => 'index')
	AdminUser.Authenticate_user(hash[:username], hash[:password]) 
			
end	
end
