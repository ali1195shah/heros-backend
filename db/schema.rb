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

ActiveRecord::Schema.define(version: 2020_01_20_221650) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "battles", force: :cascade do |t|
    t.bigint "team_id", null: false
    t.bigint "superhero_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["superhero_id"], name: "index_battles_on_superhero_id"
    t.index ["team_id"], name: "index_battles_on_team_id"
  end

  create_table "superheros", force: :cascade do |t|
    t.string "name"
    t.integer "intelligence"
    t.integer "strength"
    t.integer "speed"
    t.integer "durability"
    t.integer "power"
    t.integer "combat"
    t.string "full_name"
    t.string "alter_egos"
    t.string "aliases"
    t.string "place_of_birth"
    t.string "first_appearance"
    t.string "publisher"
    t.string "alignment"
    t.string "gender"
    t.string "race"
    t.string "height_feet"
    t.string "height_meters"
    t.string "weight_lbs"
    t.string "weight_kgs"
    t.string "eye_color"
    t.string "hair_color"
    t.string "occupation"
    t.string "base"
    t.string "group_affiliation"
    t.string "relatives"
    t.string "image_url"
  end

  create_table "teams", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_teams_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "battles", "superheros"
  add_foreign_key "battles", "teams"
  add_foreign_key "teams", "users"
end
