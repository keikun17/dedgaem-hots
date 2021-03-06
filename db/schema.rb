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

ActiveRecord::Schema.define(version: 20131130062849) do

  create_table "builds", force: true do |t|
    t.string   "title"
    t.text     "summary"
    t.text     "body"
    t.integer  "hero_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "builds", ["hero_id"], name: "index_builds_on_hero_id", using: :btree

  create_table "heroes", force: true do |t|
    t.string   "name"
    t.string   "universe"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "base_life"
    t.float    "attack"
    t.float    "abilities"
    t.float    "speed"
    t.string   "specialization"
    t.string   "mastery"
  end

  create_table "talents", force: true do |t|
    t.integer "hero_id"
    t.string  "name"
  end

  add_index "talents", ["hero_id"], name: "index_talents_on_hero_id", using: :btree

end
