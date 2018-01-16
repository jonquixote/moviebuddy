Rails.application.routes.draw do

	resources :movies, only: [:index, :show]

	root 'movies#index'

	post '/movies/search' => "movies#search"

end
