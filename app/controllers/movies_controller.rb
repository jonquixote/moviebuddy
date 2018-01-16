class MoviesController < ApplicationController
  def index
  	if permitted_params[:title].present?
  		@movies = MovieService.search_movie(title: permitted_params[:title], page: permitted_params[:page])
  	else
  		@movies = []
  	end
  end

	def show
		@details = MovieService.movie_details(movie_id: params[:id])
		@recommendations = MovieService.recommendations(movie_id: params[:id], page: permitted_params[:page])
  end

  def search
  	redirect_to movies_path(title: permitted_params[:title])
  end

  private

  def permitted_params
  	params.permit(:title, :page)
  end
end
