class WordsController < ApplicationController


    def show 

    end 

    def create 
        @moment = Moment.find(params[:moment_id])
        @word = @moment.words.build(word_params)
        if @word.save 
            redirect_to moment_path(@moment)
        else 
            render "moments/show"
        end 
    end 


    private 

    def word_params
        params.require(:word).permit(:name)
    end 
end
