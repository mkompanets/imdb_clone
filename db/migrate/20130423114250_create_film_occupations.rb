class CreateFilmOccupations < ActiveRecord::Migration
  def change
    create_table :film_occupations do |t|
      t.integer :film_id
      t.integer :occupation_id
    end
    add_index :film_occupations, :film_id
    add_index :film_occupations, :occupation_id
  end
end
