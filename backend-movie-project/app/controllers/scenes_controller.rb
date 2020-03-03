class ScenesController < ApplicationController

    def index
        @scenes = Scene.all 
        render json: @scenes
    end

    def create 

        scene = Scene.create(scene_params)
        render json: scene
        # scene = Scene.create(scene_params)
        # render json: scene
    end

     
private

    def scene_params
        params.permit(:image_url, :description)
    end
end
