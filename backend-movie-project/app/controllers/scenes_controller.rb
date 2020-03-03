class ScenesController < ApplicationController

    def index
        @scenes = Scene.all 
        render json: @scenes
    end

    # def create 
    #     # scene= Scene.find_or_create_by(name: params[:])
    #     @scene = Scene.create(
    #         description: params[:description],
    #         image_url: params[:image_url]
    #     )

    #     if scene.valid?
    #         render josn: scene
    #     else
    #         render json: { errors: scene.errors.full_messages}, status 400
    #     end
    # end
end
