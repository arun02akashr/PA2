class MoviesController < ApplicationController
    def index
      @movies = Movie.all
      respond_to do |format|
      format.html  # Ensures the server responds to HTML requests
      format.json { render json: @movies }
    end
end
  