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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141028013044) do

  create_table "characters", force: true do |t|
    t.string   "name"
    t.integer  "strength"
    t.integer  "mega_strength"
    t.integer  "dexterity"
    t.integer  "mega_dexterity"
    t.integer  "stamina"
    t.integer  "mega_stamina"
    t.integer  "perception"
    t.integer  "mega_perception"
    t.integer  "intelligence"
    t.integer  "mega_intelligence"
    t.integer  "wits"
    t.integer  "mega_wits"
    t.integer  "appearance"
    t.integer  "mega_appearance"
    t.integer  "manipulation"
    t.integer  "mega_manipulation"
    t.integer  "charisma"
    t.integer  "mega_charisma"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "characters_powers", force: true do |t|
    t.integer  "character_id"
    t.integer  "power_id"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "characters_powers", ["character_id", "power_id"], name: "index_characters_powers_on_character_id_and_power_id", unique: true
  add_index "characters_powers", ["character_id"], name: "index_characters_powers_on_character_id"
  add_index "characters_powers", ["power_id"], name: "index_characters_powers_on_power_id"

  create_table "known_powers", force: true do |t|
    t.integer  "character_id"
    t.integer  "power_id"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "known_powers", ["character_id", "power_id"], name: "index_known_powers_on_character_id_and_power_id", unique: true
  add_index "known_powers", ["character_id"], name: "index_known_powers_on_character_id"
  add_index "known_powers", ["power_id"], name: "index_known_powers_on_power_id"

  create_table "powers", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
