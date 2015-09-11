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

ActiveRecord::Schema.define(version: 20150911040727) do

  create_table "contact_phones", force: true do |t|
    t.integer  "contact_id"
    t.integer  "number_id"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "image"
    t.boolean  "available"
    t.string   "status"
    t.string   "location"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "time_zone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.integer  "user_id"
    t.integer  "contact_id"
    t.date     "when"
    t.text     "contents"
    t.boolean  "pending"
    t.boolean  "sent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "numbers", force: true do |t|
    t.string   "full_number"
    t.string   "type"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reminders", force: true do |t|
    t.integer  "user_id"
    t.integer  "contact_id"
    t.date     "when"
    t.boolean  "pending"
    t.boolean  "received"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.integer  "contact_id"
    t.string   "fb_email"
    t.string   "fb_password"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
