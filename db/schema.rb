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

ActiveRecord::Schema.define(version: 20150429223128) do

  create_table "complaints", force: true do |t|
    t.string   "description", limit: 140,                 null: false
    t.boolean  "spam",                    default: false
    t.integer  "authorID",                default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude",    limit: 24
    t.float    "longitude",   limit: 24
  end

  create_table "users", force: true do |t|
    t.string   "email",                limit: 70,                      null: false
    t.string   "password",             limit: 20,                      null: false
    t.string   "city"
    t.integer  "number_of_complaints",            default: 0
    t.string   "type",                            default: "customer", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
