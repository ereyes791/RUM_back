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

ActiveRecord::Schema.define(version: 20160313180115) do

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.boolean  "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "rum_id"
    t.integer  "taste_id"
    t.integer  "tastedIntensity"
    t.integer  "smell_id"
    t.integer  "smellIntensity"
    t.integer  "color_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "notes", ["color_id"], name: "index_notes_on_color_id"
  add_index "notes", ["rum_id"], name: "index_notes_on_rum_id"
  add_index "notes", ["smell_id"], name: "index_notes_on_smell_id"
  add_index "notes", ["taste_id"], name: "index_notes_on_taste_id"
  add_index "notes", ["user_id"], name: "index_notes_on_user_id"

  create_table "proofs", force: :cascade do |t|
    t.integer  "adv"
    t.integer  "proof"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rums", force: :cascade do |t|
    t.string   "name"
    t.integer  "brand_id"
    t.integer  "type_id"
    t.string   "blend"
    t.integer  "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "proof_id"
  end

  add_index "rums", ["brand_id"], name: "index_rums_on_brand_id"
  add_index "rums", ["proof_id"], name: "index_rums_on_proof_id"
  add_index "rums", ["type_id"], name: "index_rums_on_type_id"

  create_table "smells", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "smells", ["category_id"], name: "index_smells_on_category_id"

  create_table "tastes", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "tastes", ["category_id"], name: "index_tastes_on_category_id"

  create_table "types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "names"
    t.string   "lastNames"
    t.datetime "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "country_id"
    t.integer  "gender_id"
  end

  add_index "users", ["country_id"], name: "index_users_on_country_id"
  add_index "users", ["gender_id"], name: "index_users_on_gender_id"

end
