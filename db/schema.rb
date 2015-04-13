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

ActiveRecord::Schema.define(version: 20150411154243) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.integer  "tourist_id"
    t.integer  "place_id"
    t.text     "title"
    t.text     "body"
    t.date     "published_on"
    t.string   "tags",                      array: true
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "blogs", ["place_id"], name: "index_blogs_on_place_id", using: :btree
  add_index "blogs", ["tourist_id"], name: "index_blogs_on_tourist_id", using: :btree

  create_table "pictures", force: :cascade do |t|
    t.integer  "blog_id"
    t.text     "caption"
    t.string   "tags",                    array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.text     "name"
    t.text     "state"
    t.text     "coordinate"
    t.string   "best_season",              array: true
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tourists", force: :cascade do |t|
    t.text     "name"
    t.text     "gender"
    t.date     "dob"
    t.text     "email"
    t.text     "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "user_id"
  end

  add_index "tourists", ["user_id"], name: "index_tourists_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "role"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
