class MovieService
	class << self
		def search_movie(title:, page:1)
			url = "https://api.themoviedb.org/3/search/movie?api_key=#{ENV.fetch("TMDB_API_KEY")}&language=en-US&query=#{title}&page=#{page}&include_adult=false"
			response = ::RestClient.get(url)
			JSON.parse(response.body)["results"]
		end

		def movie_details(movie_id:)
			url = "https://api.themoviedb.org/3/movie/#{movie_id}?api_key=#{ENV.fetch("TMDB_API_KEY")}&language=en-US"
			response = ::RestClient.get(url)
			JSON.parse(response.body)
		end

		def recommendations(movie_id:, page:1)
			page ||= 1
			url = "https://api.themoviedb.org/3/movie/#{movie_id}/recommendations?api_key=#{ENV.fetch("TMDB_API_KEY")}&language=en-US&page=#{page}"
			response = ::RestClient.get(url)
			JSON.parse(response.body)["results"]
		end
	end
end