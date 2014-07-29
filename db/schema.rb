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

ActiveRecord::Schema.define(version: 20140728172742) do

  create_table "admin_users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username",        limit: 16
    t.string   "first_name",      limit: 16
    t.string   "last_name",       limit: 16
    t.string   "hashed_password", limit: 16
    t.string   "linked_in",       limit: 50
    t.integer  "age",             limit: 8
    t.string   "gender",          limit: 13
    t.text     "about_me"
    t.string   "contact_no",      limit: 10
    t.string   "email",           limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
