class Post < ActiveRecord::Base

	belongs_to :user

	validates_presence_of :content
	validates_length_of :body, :maximum => 150
	validates_presence_of :user_id

end
