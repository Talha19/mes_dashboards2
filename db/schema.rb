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

ActiveRecord::Schema.define(version: 20140924204410) do

  create_table "arbeitsplatzs", force: true do |t|
    t.string   "name"
    t.string   "bezeichnung"
    t.integer  "werk_id"
    t.string   "maschine"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "arbpls", force: true do |t|
    t.string   "name"
    t.string   "beschr"
    t.integer  "werk_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "arbpls", ["werk_id"], name: "index_arbpls_on_werk_id"

  create_table "maschinentyps", force: true do |t|
    t.string   "name"
    t.string   "bezeichnung"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "arbpl_id"
  end

  create_table "matyps", force: true do |t|
    t.string   "name"
    t.string   "beschr"
    t.integer  "arbpl_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matyps", ["arbpl_id"], name: "index_matyps_on_arbpl_id"

  create_table "oees", force: true do |t|
    t.date     "datum"
    t.string   "arbpl"
    t.string   "shift_text"
    t.float    "ist_prod"
    t.float    "ist_ruest"
    t.float    "ist_still"
    t.float    "ist_stoe"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "werk_id"
    t.integer  "arbpl_id"
  end

  add_index "oees", ["arbpl_id"], name: "index_oees_on_arbpl_id"
  add_index "oees", ["werk_id"], name: "index_oees_on_werk_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "werks", force: true do |t|
    t.string   "werk"
    t.string   "stadt"
    t.string   "land"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
