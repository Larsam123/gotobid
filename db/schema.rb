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

ActiveRecord::Schema.define(version: 20150601203000) do

  create_table "ars", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "proposal_id"
    t.integer  "invoice_number"
    t.date     "invoice_date"
    t.float    "amt_owed"
    t.float    "amt_paid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colors", force: :cascade do |t|
    t.integer  "color_id"
    t.string   "color_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materials", force: :cascade do |t|
    t.integer  "material_id"
    t.string   "material_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "product_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proposals", force: :cascade do |t|
    t.integer  "proposal_id"
    t.integer  "user_id"
    t.integer  "user_id_vendor"
    t.boolean  "win"
    t.float    "user_request_val"
    t.float    "proposal_rfp_val"
    t.integer  "product_id"
    t.integer  "size_id"
    t.integer  "color_id"
    t.integer  "quantity"
    t.float    "user_request_price"
    t.float    "proposal_rfp_price"
    t.integer  "material_id"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sizes", force: :cascade do |t|
    t.integer  "size_id"
    t.string   "size_desc"
    t.integer  "count"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "user_id"
    t.boolean  "vendor"
    t.string   "address"
    t.string   "password"
    t.string   "username"
    t.integer  "sic"
    t.integer  "phone"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
