class MomentsController < ApplicationController

    def index 
        @moment = Moment.new
        @moments = Moment.all 
    end 

    def show 
        @moment = Moment.find(params[:id])
        @word = Word.new 
    end 

    def create 
       @moment = Moment.new(moment_params)
       if @moment.save 
        redirect_to moment_url(@moment)
       else 
        @moments = Moment.all
        render :index 
       end 
    end 

    private 

    def moment_params
        params.require(:moment).permit(:post_title, :define, :moment_id)
    end 

end
