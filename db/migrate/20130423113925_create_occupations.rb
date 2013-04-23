class CreateOccupations < ActiveRecord::Migration
  def change
    create_table :occupations do |t|
      t.integer :person_id
      t.string :occupation_type, :limit => 40
      t.boolean :primary
    end
    add_index :occupations, :person_id
    add_index :occupations, :occupation_type
  end
end
