class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
    	t.string :external_id
    	t.string :video
    	t.string :title
    	t.string :poster_path
    	t.string :original_language
    	t.string :original_title
    	t.string :backdrop_path
    	t.string :release_date
    	t.boolean :adult
    	t.string :overview
      t.timestamps
      #	vote_count
			# id
			# video
			# vote_average
			# title
			# popularity
			# poster_path
			# original_language
			# original_title
			# genre_ids
			# backdrop_path
			# adult
			# overview
			# release_date
    end
  end
end
