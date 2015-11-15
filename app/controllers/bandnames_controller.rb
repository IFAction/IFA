class BandnamesController < ApplicationController
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
#  to get them to save, need ot have save button
# when you click save, it populates the form
# will post to creat,go to def create action


    def index
        @mybandnames = current_user.bandnames.all
    end

# controller for user to submit their favorite bandname
    
#     def new   
        
#         @submitbandname = Bandname.new(params[:firstword, :secondword])
        
#         # this creates new in my form
#     end

# # 



    def create
        @bandname = current_user.bandnames.create(bandname_params)

        if @bandname 
            redirect_to :action => "index"
        else 
            "mmm"
        end
        
    end


    def new   
        @word1 = random_word
        @word2 = random_word
        @trump = trump_phrase

    	@random_bandname = Bandname.random#Bandname.new(:firstword => @word1, :secondword => @word2)
        @new_bandname = Bandname.new()

        

        
        # this creates new in my form
    end

    
    def show
# is meant for one thing
        
    end 

    def random_word
        
        # show a word from the model
        words = ["apple","Blue","Munch", "Emily", "John","Batfang","Hewey"]
        maxsize = words.size
        # defines biggest range of selection
        positioninarray = rand(maxsize)
        #  is a random number between 0 and max size
        words[positioninarray]
    end

    def trump_phrase
        # show a word from the model
        phrases = ["Bingo!","I just have great respect for ","The Mexican government forces many bad people into our country. Because they’re smart. They’re smarter than ","You know, it really doesn’t matter what the media write as long as you’ve got a young and beautiful piece of ass and band name called ,","When was the last time anybody saw us beating, let's say, China in a trade deal? They kill us. I beat China all the time. All the time. I do it will listening to ","Hillary Clinton was the worst Secretary of State in the history of the United States. There's never been a Secretary of State so bad as Hillary. The world blew up around us. We lost everything, including all relationships. There wasn't one good thing that came out of that administration or her being the lead singer of ","If you can’t get rich dealing with politicians, there’s something wrong with  "]
        maxsize = phrases.size
        # defines biggest range of selection
        positioninarray = rand(maxsize)
        #  is a random number between 0 and max size
        phrases[positioninarray]
    end

    

# VARIBALE FOR FIRST WORD, THEN A SECOND WORD IN MY VIEW
# THEN SET UP VARIABLE TO POPULATE THESE

# CAN READ CSV FILE, THEN LOOP THROUGH ECH WORD IN THE FILE
	
        	
        
 

    private

    def bandname_params
    	params.require(:bandname).permit(:firstword, :secondword)
    end
end



