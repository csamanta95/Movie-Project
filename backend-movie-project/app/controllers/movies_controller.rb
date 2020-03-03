class MoviesController < ApplicationController
    def index
        @movies = Movie.all 
        render json: @movies 
    end

    def create 

        movie = Movie.create(movie_params)
        render json: movie
        # scene = Scene.create(scene_params)
        # render json: scene
    end

     
private

    def movie_params
        params.require(:movie).permit(:title, :release_year)
    end

    # def scene_params
    #     params.require(:scene).permit(:image_url, :description, :movie_id)
    # end
end
