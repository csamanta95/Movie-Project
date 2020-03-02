class ScenesController < ApplicationController

    def index
        @scenes = Scene.all 
        render json: @scenes
    end
end
