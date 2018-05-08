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

ActiveRecord::Schema.define(version: 20180508125043) do

  create_table "cat_coltures", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "id_parent",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "coltures", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "id_cat",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.string   "cf",               limit: 255
    t.string   "piva",             limit: 255
    t.string   "registred_office", limit: 255
    t.string   "mail",             limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "lands", force: :cascade do |t|
    t.integer  "id_colture", limit: 4
    t.float    "ha",         limit: 24
    t.integer  "id_company", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "company_id", limit: 4
  end

  add_index "lands", ["company_id"], name: "index_lands_on_company_id", using: :btree

  create_table "max_doses", force: :cascade do |t|
    t.integer  "id_product", limit: 4
    t.integer  "id_colture", limit: 4
    t.float    "max_gr_ha",  limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "prescription_rows", force: :cascade do |t|
    t.integer  "id_prescription", limit: 4
    t.integer  "id_product",      limit: 4
    t.float    "dose_per_ha",     limit: 24
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "prescriptions", force: :cascade do |t|
    t.date     "date"
    t.integer  "id_company", limit: 4
    t.integer  "land",       limit: 4
    t.text     "note",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "product_suppliers", force: :cascade do |t|
    t.integer  "id_product",  limit: 4
    t.integer  "id_supplier", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.string   "p_active",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "address",    limit: 255
    t.string   "piva",       limit: 255
    t.string   "cf",         limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "lands", "companies"
end
