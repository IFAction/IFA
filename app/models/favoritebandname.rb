class Favoritebandname < ActiveRecord::Base

	belongs_to :bandname
	belongs_to :user
end
