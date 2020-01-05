class SuperherosController < ApplicationController
    def index
        @supers = Superhero.all
        render json: @supers
    end

    def show
        @super = Superhero.find(params[:id])
        render json: @super
    end
    
end
