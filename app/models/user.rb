class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable#, :confirmable


	has_many :stories
	has_many :posts
	has_many :bandnames

	has_many :favorites, :source => :bandname, :through => :favoritebandnames
	has_many :favoritebandnames

	def name
		"#{first_name} #{last_name}"
	end

	has_attached_file :avatar, :styles => 
	{ :medium => "300x300>", :thumb => "100x100>" }, 
	:default_url => "/images/:style/missing.png" 
	validates_attachment_content_type :avatar, 
	:content_type => /\Aimage\/.*\Z/
	

	# has_secure_password 
	# validates_confirmation_of :password
	# validates_presence_of :password, on: :create

end
