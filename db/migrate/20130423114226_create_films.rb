class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :title
      t.string :length
      t.text :synopsis
      t.datetime :release_date
      t.timestamps
    end
  end
end
