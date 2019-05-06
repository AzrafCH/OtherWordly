class MomentsController < ApplicationController

    def index 
        @moment = Moment.new
        @moments = Moment.all 
    end 

    def show 
        @moment = Moment.find(params[:id])
    end 

    def create 
        @moment = Moment.new 
        @moment.post_title = params[:moment][:post_title]
        @moment.define = params[:moment][:define]
        @moment.save 

        redirect_to moment_path(@moment)
    end 

    private 

    def moment_params
        params.require(:moment).permit(:post_title, :define)
    end 

end
