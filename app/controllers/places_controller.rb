class PlacesController < ApplicationController

    def index
        places = Place.all
        render json: places
    end

    def show
        place = Place.find(params[:id])
        render json: place
    end

    def create 
        byebug
        place = Place.create(place_params)
        render json: place
    end

    private 

    def place_params
        params.permit(:date, :location)
    end

end
