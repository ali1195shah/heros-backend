class SuperherosController < ApplicationController
    def index
        @supers = Superhero.all
        render json: @supers
    end

    def show
        @super = Superhero.find(params[:id])
        render json: @super
    end

    def create
        @super = Superhero.create(super_params)
        render json: @super
    end

    def update
        @super = Superhero.find(params[:id])
        render json: @super
    end

    def destroy
        @super = Superhero.destroy(params[:id])
        render json: @super
    end

    private

    def super_params
        params.permit(:name)
    end
    
end
