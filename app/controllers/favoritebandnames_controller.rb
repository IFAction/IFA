class FavoritebandnamesController < ApplicationController
	
	layout "application"

    def index
    	 @myfavoritebandnames = current_user.favoritebandnames.all
       
    end

    def create
		
        # this is generated from the random bandname button
        # @random_bandname.id
        # this is aailable from the current user signed in
        # current_user.id
        # so we can take these and insert them, create new, n the favorite bnames
        
        # build is extra method which created a new record
        # Favoritebandname.new
        @bandname = Bandname.find(params[:Bandname_id])

        new_fave = Favoritebandname.new(:user => current_user, :bandname => @bandname)

        new_fave.save
        # current_user.favorites << @bandname

        # @newfave.update_attributes(Bandname_id: params[Bandname_id], User_id: params[User_id])
        # @newfave.save
        # Favoritebandnames.create(Bandname_id: params[Bandname_id], User_id: params[User_id])
    end

    def new   
        
        @new_favoritebandname = Favoritebandname.new()

        
        # this creates new in my form
    end

    # def favoritebandname_params
    # 	# params.require(:favoritebandname).permit(:firstword, :secondword)

    # end
end
