class TrumpphrasesController < ApplicationController
   
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
        @trumpphrases = current_user.trumpphrases.all
    end

    def create
        @trumpphrases = current_user.trumpphrases.create(trumpphrase_params)

        if @trumpphrase 
            redirect_to :action => "index"
        else 
            "mm"
        end
        
    end


    def new   
        @trump_phrase = trump_phrase
        

    	@trumpphrasebandname = trumpphrasebandname.new(:trump_phrase => @trump_phrase :3@bandname = bandname.order("created_at").last)
        # this creates new in my form


    end


    def trump_phrase
        # show a word from the model
        phrases = ["Bingo!","I just have great respect for ","“The Mexican government forces many bad people into our country. Because they’re smart. They’re smarter than "]
        maxsize = words.size
        # defines biggest range of selection
        positioninarray = rand(maxsize)
        #  is a random number between 0 and max size
        words[positioninarray]
    end

    

# VARIBALE FOR FIRST WORD, THEN A SECOND WORD IN MY VIEW
# THEN SET UP VARIABLE TO POPULATE THESE

# CAN READ CSV FILE, THEN LOOP THROUGH ECH WORD IN THE FILE
	
        	
        
 

    private

    def trumpphrase_params
    	params.require(:trumpphrase).permit(:firstsentence)
    end
end



