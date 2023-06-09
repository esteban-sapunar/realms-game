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
    t.bigint "world_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["duchy_id"], name: "index_counties_on_duchy_id"
    t.index ["world_id"], name: "index_counties_on_world_id"
  end

  create_table "duchies", force: :cascade do |t|
    t.string "name"
    t.bigint "kingdom_id", null: false
    t.bigint "world_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kingdom_id"], name: "index_duchies_on_kingdom_id"
    t.index ["world_id"], name: "index_duchies_on_world_id"
  end

  create_table "hundreds", force: :cascade do |t|
    t.string "hundred_type"
    t.integer "position", default: [0, 0], array: true
    t.bigint "manor_id", null: false
    t.bigint "world_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manor_id"], name: "index_hundreds_on_manor_id"
    t.index ["world_id"], name: "index_hundreds_on_world_id"
  end

  create_table "kingdoms", force: :cascade do |t|
    t.string "name"
    t.bigint "world_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["world_id"], name: "index_kingdoms_on_world_id"
  end

  create_table "manors", force: :cascade do |t|
    t.string "name"
    t.bigint "shire_id", null: false
    t.bigint "user_id"
    t.bigint "world_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shire_id"], name: "index_manors_on_shire_id"
    t.index ["user_id"], name: "index_manors_on_user_id"
    t.index ["world_id"], name: "index_manors_on_world_id"
  end

  create_table "shires", force: :cascade do |t|
    t.string "name"
    t.bigint "county_id", null: false
    t.bigint "world_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["county_id"], name: "index_shires_on_county_id"
    t.index ["world_id"], name: "index_shires_on_world_id"
  end

  create_table "urban_neighbourhoods", force: :cascade do |t|
    t.string "size"
    t.string "upgrades", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name", null: false
    t.string "family_name", null: false
    t.bigint "world_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["world_id"], name: "index_users_on_world_id"
  end

  create_table "worlds", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "buildings", "hundreds"
  add_foreign_key "counties", "duchies"
  add_foreign_key "counties", "worlds"
  add_foreign_key "duchies", "kingdoms"
  add_foreign_key "duchies", "worlds"
  add_foreign_key "hundreds", "manors"
  add_foreign_key "hundreds", "worlds"
  add_foreign_key "kingdoms", "worlds"
  add_foreign_key "manors", "shires"
  add_foreign_key "manors", "users"
  add_foreign_key "manors", "worlds"
  add_foreign_key "shires", "counties"
  add_foreign_key "shires", "worlds"
end
