class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.integer :film_id
      t.integer :actor_id
      t.string :name
      t.text :biography
      t.timestamps
    end
  end
end
