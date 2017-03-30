class PlayerController < ApplicationController
    
    def index
        @player = Player.all
    end
    
    def show
    end
    
    def new
        @player = Player.new(player_params)
        if @player.save
            redirect_to @player
        end
    end
    
    def edit 
    end
    
    def destroy 
        @player.destory
    end
    
    private
    
    def set_player
        @player = Player.find(params[:id])
    end
    
    def player_params
        params.require(:players).permit(:first_name, :second_name, :phone, :mobile, :email_marketing)
    end
    
end
