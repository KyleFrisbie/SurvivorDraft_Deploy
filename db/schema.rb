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

ActiveRecord::Schema.define(version: 20160224050632) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drafters", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "wins"
    t.integer  "losses"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "drafters", ["user_id"], name: "index_drafters_on_user_id", using: :btree

  create_table "drafters_survivors", force: :cascade do |t|
    t.integer  "drafter_id"
    t.integer  "survivor_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "drafters_survivors", ["drafter_id"], name: "index_drafters_survivors_on_drafter_id", using: :btree
  add_index "drafters_survivors", ["survivor_id"], name: "index_drafters_survivors_on_survivor_id", using: :btree

  create_table "seasons", force: :cascade do |t|
    t.integer  "number"
    t.string   "name"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seasons_survivors", force: :cascade do |t|
    t.integer  "season_id"
    t.integer  "survivor_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "seasons_survivors", ["season_id"], name: "index_seasons_survivors_on_season_id", using: :btree
  add_index "seasons_survivors", ["survivor_id"], name: "index_seasons_survivors_on_survivor_id", using: :btree

  create_table "survivors", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "residence"
    t.string   "photo_url"
    t.boolean  "fantasy"
    t.integer  "elimination_number"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "survivors_tribes", force: :cascade do |t|
    t.integer  "survivor_id"
    t.integer  "tribe_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "survivors_tribes", ["survivor_id"], name: "index_survivors_tribes_on_survivor_id", using: :btree
  add_index "survivors_tribes", ["tribe_id"], name: "index_survivors_tribes_on_tribe_id", using: :btree

  create_table "tribes", force: :cascade do |t|
    t.string   "name"
    t.integer  "tribe_generation"
    t.integer  "immunity_wins"
    t.integer  "reward_wins"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "drafters", "users"
  add_foreign_key "drafters_survivors", "drafters"
  add_foreign_key "drafters_survivors", "survivors"
  add_foreign_key "seasons_survivors", "seasons"
  add_foreign_key "seasons_survivors", "survivors"
  add_foreign_key "survivors_tribes", "survivors"
  add_foreign_key "survivors_tribes", "tribes"
end
