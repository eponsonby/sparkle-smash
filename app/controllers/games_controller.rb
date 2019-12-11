class GamesController < ApplicationController

    def index
        @games = Game.all
        render :json => @games, :include => {:user => {:only => :name}}, :except => [:created_at, :updated_at, :id, :user_id]
    end

    def show
        @game = find_game
        render :json => @game, :include => {:user => {:only => :name}}, :except => [:created_at, :updated_at, :id, :user_id]
    end

    private

    def game_params
        params.require(:game).permit(:user_id, :score)
    end

    def find_game
        game = Game.find_by(id: params[:id])
        game
    end
end
