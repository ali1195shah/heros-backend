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
        @Super = Superhero.create(super_params)
        if @Super.valid?
            render json: @Super, status: :created
        else
            render json: {errors: @Super.errors.full_messages}, status: 400
        end
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
            params.permit(:name,
                :intelligence,
                :strength, 
                :speed, 
                :durability, 
                :power, 
                :combat, 
                :full_name,
                # :alter_ego,
                :aliases,
                :place_of_birth,
                # :first_appearance,
                # :publisher,
                :alignment,
                :gender,
                :race, 
                # :height_feet, 
                # :height_meters,
                # :weight_lbs,
                # :weight_kgs,
                :eye_color, 
                :hair_color, 
                :occupation, 
                # :base,
                :group_affiliation, 
                :relatives,
                :image_url
        )
    end
    
end
