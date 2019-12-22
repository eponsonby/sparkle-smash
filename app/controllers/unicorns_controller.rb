class UnicornsController < ApplicationController

    def index
        @unicorns = Unicorn.all
        render json: @unicorns
    end



end
