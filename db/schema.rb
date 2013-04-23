# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130423162618) do

  create_table "characters", :force => true do |t|
    t.integer  "film_id"
    t.integer  "actor_id"
    t.string   "name"
    t.text     "biography"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "film_occupations", :force => true do |t|
    t.integer "film_id"
    t.integer "occupation_id"
  end

  add_index "film_occupations", ["film_id"], :name => "index_film_occupations_on_film_id"
  add_index "film_occupations", ["occupation_id"], :name => "index_film_occupations_on_occupation_id"

  create_table "films", :force => true do |t|
    t.string   "title"
    t.string   "length"
    t.text     "synopsis"
    t.datetime "release_date"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "films_genres", :id => false, :force => true do |t|
    t.integer "film_id"
    t.integer "genre_id"
  end

  create_table "genres", :force => true do |t|
    t.string "name"
  end

  create_table "occupations", :force => true do |t|
    t.integer "person_id"
    t.string  "occupation_type", :limit => 40
    t.boolean "primary"
  end

  add_index "occupations", ["occupation_type"], :name => "index_occupations_on_occupation_type"
  add_index "occupations", ["person_id"], :name => "index_occupations_on_person_id"

  create_table "people", :force => true do |t|
    t.string   "name"
    t.string   "birth_name"
    t.datetime "birth_date"
    t.string   "birth_location"
    t.text     "biography"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
