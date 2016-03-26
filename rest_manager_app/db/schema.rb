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

ActiveRecord::Schema.define(version: 20160326170916) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Orders_Parties", id: false, force: :cascade do |t|
    t.integer "party_id", null: false
    t.integer "order_id", null: false
  end

  add_index "Orders_Parties", ["order_id", "party_id"], name: "index_Orders_Parties_on_order_id_and_party_id", using: :btree
  add_index "Orders_Parties", ["party_id", "order_id"], name: "index_Orders_Parties_on_party_id_and_order_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.string  "name"
    t.string  "cuisine_type"
    t.integer "price"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parties", force: :cascade do |t|
    t.integer "table_number"
    t.integer "guests"
    t.boolean "paid?"
    t.integer "order_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
