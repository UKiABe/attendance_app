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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20190106091755) do

  create_table "attendances", force: :cascade do |t|
    t.integer "game_id"
    t.integer "player_id"
    t.string "attendance"
    t.string "comment"
    t.string "judge"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id", "player_id"], name: "index_attendances_on_game_id_and_player_id", unique: true
  end

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.date "date"
    t.string "place"
    t.time "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time "meetingtime"
  end

  create_table "players", force: :cascade do |t|
    t.integer "back_number"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
