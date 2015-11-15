class Bandname < ActiveRecord::Base
	  belongs_to :user

    has_many :favoritebandnames
    has_many :favorited_by, :source => :user, :through => :favoritebandnames
  	
    # has_many :favoritebandname_id
  	# accepts_nested_attributes_for :favoritebandname_id


  	# Bandname.random
  	def self.random
  		all_names = self.all # an "array" of all bandnames
  		# self mens the curent object, in this case bandnames model
  		maxsize = all_names.count
  		# pick a random number within max range
  		position = rand(maxsize)
  		# to_a means to treat it as an array
  		all_names.to_a[position]
  	end

	def full_bandname

		
	end


end
