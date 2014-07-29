class ConnectController < ApplicationController

def login_attempt
	hash = params[:user]
	if (hash[:username] == "admin" && hash[:password] == "admin123")
		redirect_to(:controller => "signup", :action => 'signup_page')
		return
	end

	user = AdminUser.authenticate_user(hash[:username], hash[:password])
	if(user)
		session[:user_id] = user.id
	    redirect_to(:controller => "signup", :action => 'index')
	else
		session[:user_id] = nil
		render(:text => "This user does not exist, please re-enter")
	end 	
end

end
