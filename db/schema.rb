# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_10_200540) do

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.integer "base_experience"
    t.integer "height"
    t.boolean "is_default"
    t.integer "order"
    t.integer "weight"
    t.text "abilities"
    t.text "forms"
    t.text "game_indices"
    t.text "types"
    t.string "location_area_encounters"
    t.text "held_items"
    t.string "moves"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.text "damage_relations"
    t.string "game_indices"
    t.text "generation"
    t.text "move_damage_class"
    t.string "names"
    t.integer "pokemon_id"
    t.string "moves"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pokemon_id"], name: "index_types_on_pokemon_id"
  end

end
