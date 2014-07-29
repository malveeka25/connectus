class AdminUser < ActiveRecord::Base
def self.authenticate_user(username, password)
	if(user = User.find_by_username(username))
		if(AdminUser.create_hashed_password(password) == User.hashed_password )
			rerturn user;
		end
	end
	return false;

end	

def create_hashed_password(password)
	return Digest::SHA1.hexdigest("The hashed password has #{password}")
end


end