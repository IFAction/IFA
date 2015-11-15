class StoriesController < ApplicationController
    layout "application"
 #    def index
 #        @users = User.all
 #        if @users.present?
 #            flash[:notice] = "yay,there are users!"
 #        else
 #            flash[:alert] = "sad face. no users"
 #        end
 #    end

 # def show
     
 #     @user = User.find(params['id'])
 # end

 # def new
 #     @user = User.new
 # end

 # def destroy

 # end

    def index
    end

    def new   
    	@story = Story.new
    end

    def create
        @story = current_user.stories.create(story_params)
    end 

    private

    def story_params
    	params.require(:story).permit(:body, :title, :subtitle)
    end
end

