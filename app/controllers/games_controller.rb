class GamesController < ApplicationController

    def index
        @games = Game.all
        render json: @games
    end

    def show
        @games = find_game
        render json: @game
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
