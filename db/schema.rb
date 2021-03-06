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

ActiveRecord::Schema.define(version: 20181215142648) do

  create_table "tasks", force: :cascade do |t|
    t.string   "subject"
    t.string   "category"
    t.integer  "points"
    t.integer  "user_id"
    t.string   "description"
    t.string   "author"
    t.string   "image"
    t.string   "filename"
    t.string   "content_type"
    t.binary   "file_contents"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "show_time"
  end

  add_index "tasks", ["user_id"], name: "index_tasks_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "picture"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "username"
    t.integer  "pointtotal"
    t.boolean  "admin",      default: false
  end

  add_index "users", ["provider", "uid"], name: "index_users_on_provider_and_uid", unique: true
  add_index "users", ["provider"], name: "index_users_on_provider"
  add_index "users", ["uid"], name: "index_users_on_uid"
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
