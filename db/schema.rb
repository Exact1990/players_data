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

ActiveRecord::Schema.define(version: 2020_11_04_112928) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "achievements", force: :cascade do |t|
    t.string "name"
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "home_team_id", null: false
    t.bigint "guest_team_id", null: false
    t.datetime "passed_at", null: false
    t.index ["guest_team_id"], name: "index_matches_on_guest_team_id"
    t.index ["home_team_id"], name: "index_matches_on_home_team_id"
  end

  create_table "player_achievements", force: :cascade do |t|
    t.bigint "player_id", null: false
    t.bigint "match_id", null: false
    t.bigint "achievement_id", null: false
    t.index ["achievement_id"], name: "index_player_achievements_on_achievement_id"
    t.index ["match_id"], name: "index_player_achievements_on_match_id"
    t.index ["player_id"], name: "index_player_achievements_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.bigint "team_id", null: false
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
  end

  add_foreign_key "matches", "teams", column: "guest_team_id"
  add_foreign_key "matches", "teams", column: "home_team_id"
  add_foreign_key "player_achievements", "achievements"
  add_foreign_key "player_achievements", "matches"
  add_foreign_key "player_achievements", "players"
  add_foreign_key "players", "teams"
end
