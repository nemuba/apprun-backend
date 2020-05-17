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

ActiveRecord::Schema.define(version: 2020_05_17_151611) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "modalities", force: :cascade do |t|
    t.integer "genre"
    t.integer "oar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre", "oar"], name: "index_modalities_on_genre_and_oar", unique: true
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "genre"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string "description"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "race_modalities", force: :cascade do |t|
    t.bigint "race_id"
    t.bigint "modality_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["modality_id"], name: "index_race_modalities_on_modality_id"
    t.index ["race_id"], name: "index_race_modalities_on_race_id"
  end

  create_table "race_sponsors", force: :cascade do |t|
    t.bigint "race_id"
    t.bigint "sponsor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["race_id"], name: "index_race_sponsors_on_race_id"
    t.index ["sponsor_id"], name: "index_race_sponsors_on_sponsor_id"
  end

  create_table "races", force: :cascade do |t|
    t.string "local"
    t.integer "status"
    t.date "date_race"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registrations", force: :cascade do |t|
    t.bigint "race_id"
    t.bigint "modality_id"
    t.bigint "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "position_id"
    t.index ["modality_id"], name: "index_registrations_on_modality_id"
    t.index ["player_id"], name: "index_registrations_on_player_id"
    t.index ["position_id"], name: "index_registrations_on_position_id"
    t.index ["race_id", "player_id", "modality_id"], name: "index_registrations_on_race_id_and_player_id_and_modality_id", unique: true
    t.index ["race_id"], name: "index_registrations_on_race_id"
  end

  create_table "sponsors", force: :cascade do |t|
    t.string "name"
    t.string "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.string "photo"
  end

  add_foreign_key "race_modalities", "modalities"
  add_foreign_key "race_modalities", "races"
  add_foreign_key "race_sponsors", "races"
  add_foreign_key "race_sponsors", "sponsors"
  add_foreign_key "registrations", "modalities"
  add_foreign_key "registrations", "players"
  add_foreign_key "registrations", "positions"
  add_foreign_key "registrations", "races"
end
