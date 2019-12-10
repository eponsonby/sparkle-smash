class UnicornsController < ApplicationController

    def index
        @unicorns = Unicorn.all
        render json: @unicorns
    end

    def show
        @unicorn = find_unicorn
        render json: @unicorn
    end

    private

    def unicorn_params
        params.require(:unicorn).permit(:id, :image)
    end

    def find_unicorn
        unicorn = Unicorn.find_by(id: params[:id])
        unicorn
    end


end
