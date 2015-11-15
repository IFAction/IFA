class PostsController < ApplicationController
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
    @post = Post.new
       
    end
    def create
        @post = current_user.posts.create(post_params)
        if @post.errors.full_message.any?
            #something went wrong
        else
            redirect_to post_path(@post)
        end

    end

    private
    def post_params
        params.require(:post).permit(:body)
    end
end

