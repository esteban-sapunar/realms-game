# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_28_020345) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buildings", force: :cascade do |t|
    t.bigint "hundred_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hundred_id"], name: "index_buildings_on_hundred_id"
  end

  create_table "counties", force: :cascade do |t|
    t.string "name"
    t.bigint "duchy_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["duchy_id"], name: "index_counties_on_duchy_id"
  end

  create_table "duchies", force: :cascade do |t|
    t.string "name"
    t.bigint "kingdom_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kingdom_id"], name: "index_duchies_on_kingdom_id"
  end

  create_table "hundreds", force: :cascade do |t|
    t.string "hundred_type"
    t.integer "position", default: [0, 0], array: true
    t.bigint "manor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manor_id"], name: "index_hundreds_on_manor_id"
  end

  create_table "kingdoms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manors", force: :cascade do |t|
    t.string "name"
    t.bigint "shire_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shire_id"], name: "index_manors_on_shire_id"
  end

  create_table "shires", force: :cascade do |t|
    t.string "name"
    t.bigint "county_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["county_id"], name: "index_shires_on_county_id"
  end

  create_table "urban_neighbourhoods", force: :cascade do |t|
    t.string "size"
    t.string "upgrades", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "buildings", "hundreds"
  add_foreign_key "counties", "duchies"
  add_foreign_key "duchies", "kingdoms"
  add_foreign_key "hundreds", "manors"
  add_foreign_key "manors", "shires"
  add_foreign_key "shires", "counties"
end