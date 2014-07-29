class User < ActiveRecord::Base
attr_accessible :first_name, :last_name :
attr_accessor :password

before_save :create_hashed_password
after_save :erase_password

private

def create_hashed_password
	unless password.blank?
		self.hashed_password = AdminUser.create_hashed_password(password)
	end
end

def	erase_password
	self.password = nil	
end

end
