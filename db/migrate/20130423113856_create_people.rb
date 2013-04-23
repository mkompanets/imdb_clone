class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :birth_name
      t.datetime :birth_date
      t.string :birth_location
      t.text :biography
      t.timestamps
    end
  end
end
