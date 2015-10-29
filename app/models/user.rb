class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         
	def name
		"#{first_name} #{last_name}"
	end

	# has_secure_password 
	# validates_confirmation_of :password
	# validates_presence_of :password, on: :create
end
