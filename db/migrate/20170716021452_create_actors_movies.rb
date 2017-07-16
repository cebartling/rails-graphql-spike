class CreateActorsMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :actors_movies do |t|
      t.integer :movie_id, null: false
      t.integer :actor_id, null: false

      t.timestamps
    end

    add_foreign_key :actors_movies, :movies
    add_foreign_key :actors_movies, :actors
  end
end
