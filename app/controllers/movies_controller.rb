class MoviesController < ApplicationController
    def index
      sort_column = params[:sort] || 'title'
      sort_direction = params[:direction] || 'asc'
  
      @movies = Movie.order("#{sort_column} #{sort_direction}")
      @sort_column = sort_column
      @sort_direction = sort_direction
  
      respond_to do |format|
        format.html  
        format.json { render json: @movies }
      end
    end
  end
  