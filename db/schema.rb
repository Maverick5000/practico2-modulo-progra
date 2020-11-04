# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_04_182405) do

  create_table "actors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "client_actors", force: :cascade do |t|
    t.integer "client_id", null: false
    t.integer "actor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["actor_id"], name: "index_client_actors_on_actor_id"
    t.index ["client_id"], name: "index_client_actors_on_client_id"
  end

  create_table "client_directors", force: :cascade do |t|
    t.integer "client_id", null: false
    t.integer "director_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_client_directors_on_client_id"
    t.index ["director_id"], name: "index_client_directors_on_director_id"
  end

  create_table "client_genres", force: :cascade do |t|
    t.integer "client_id", null: false
    t.integer "genre_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_client_genres_on_client_id"
    t.index ["genre_id"], name: "index_client_genres_on_genre_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "directors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "renteds", force: :cascade do |t|
    t.integer "tape_id", null: false
    t.integer "client_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_renteds_on_client_id"
    t.index ["tape_id"], name: "index_renteds_on_tape_id"
  end

  create_table "returneds", force: :cascade do |t|
    t.integer "tape_id", null: false
    t.integer "client_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_returneds_on_client_id"
    t.index ["tape_id"], name: "index_returneds_on_tape_id"
  end

  create_table "tape_actors", force: :cascade do |t|
    t.integer "tape_id", null: false
    t.integer "actor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["actor_id"], name: "index_tape_actors_on_actor_id"
    t.index ["tape_id"], name: "index_tape_actors_on_tape_id"
  end

  create_table "tape_genres", force: :cascade do |t|
    t.integer "tape_id", null: false
    t.integer "genre_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["genre_id"], name: "index_tape_genres_on_genre_id"
    t.index ["tape_id"], name: "index_tape_genres_on_tape_id"
  end

  create_table "tapes", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.boolean "available", default: true
    t.integer "director_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["director_id"], name: "index_tapes_on_director_id"
  end

  create_table "waitlists", force: :cascade do |t|
    t.integer "tape_id", null: false
    t.integer "client_id", null: false
    t.boolean "notified", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_waitlists_on_client_id"
    t.index ["tape_id"], name: "index_waitlists_on_tape_id"
  end

  add_foreign_key "client_actors", "actors"
  add_foreign_key "client_actors", "clients"
  add_foreign_key "client_directors", "clients"
  add_foreign_key "client_directors", "directors"
  add_foreign_key "client_genres", "clients"
  add_foreign_key "client_genres", "genres"
  add_foreign_key "renteds", "clients"
  add_foreign_key "renteds", "tapes"
  add_foreign_key "returneds", "clients"
  add_foreign_key "returneds", "tapes"
  add_foreign_key "tape_actors", "actors"
  add_foreign_key "tape_actors", "tapes"
  add_foreign_key "tape_genres", "genres"
  add_foreign_key "tape_genres", "tapes"
  add_foreign_key "tapes", "directors"
  add_foreign_key "waitlists", "clients"
  add_foreign_key "waitlists", "tapes"
end
