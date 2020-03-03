class MoviesController < ApplicationController
    def index
        @movies = Movie.all 
        render json: @movies 
    end

    def create 

        scene= Scene.find_or_create_by(name: params[:scene_title])
        @movie = Movie.create(
            title: params[:title],
            release_year: params[:release_year],
            scene: scene,
            description: params[:description],
            image_url: params[:image_url]
        )

        # if movie.valid?
        #     render josn: movie
        # else
        #     render json: { errors: movie.errors.full_messages}, status 400
        # end
    end
end
