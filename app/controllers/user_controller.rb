class UsersController < ApplicationController
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

    def create   
    user = User.new(params[:email])  
       
    end
end