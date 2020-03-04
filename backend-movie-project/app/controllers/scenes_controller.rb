class ScenesController < ApplicationController

    def index
        @scenes = Scene.all 
        render json: @scenes
    end

    def show 
        @scene = Scene.find(params[:id])
        render json: @scene
    end

    def new
        scene = Scene.new
    end

    def create 

        scene = Scene.create(scene_params)
        render json: scene.movie
        # scene = Scene.create(scene_params)
        # render json: scene
    end

     
private

    def scene_params
        params.permit(:image_url, :description,:movie_id)
    end
end
