class User < ActiveRecord::Base

	# has_secure_password

	scope :sorted, lambda { order("users.email ASC") }
	scope :newest_first, lambda { order("users.created_at DESC") }
	
	scope :search, lambda { |query|
	  where(["email LIKE ?", "%#{query}%"])
	}

end
