class CreateFilmsGenres < ActiveRecord::Migration
  def change
    create_table :films_genres, :id => false do |t|
      t.integer :film_id
      t.integer :genre_id
    end
  end
end
