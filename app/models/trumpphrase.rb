class Trumpphrase < ActiveRecord::Base
	belongs_to :user

	def self.random
  		all_phrases = self.all # an "array" of all bandnames
  		# self mens the curent object, in this case bandnames model
  		maxsize = all_phrases.count
  		# pick a random number within max range
  		position = rand(maxsize)
  		# to_a means to treat it as an array
  		all_phrases.to_a[position]
  	end

end
