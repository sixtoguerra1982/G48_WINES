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

ActiveRecord::Schema.define(version: 2021_11_24_232310) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "oenologists", force: :cascade do |t|
    t.integer "age"
    t.string "name"
    t.string "nation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "strains", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "role", default: 0
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wines_oenologists", force: :cascade do |t|
    t.bigint "wine_id"
    t.bigint "oenologist_id"
    t.integer "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["oenologist_id"], name: "index_wines_oenologists_on_oenologist_id"
    t.index ["wine_id"], name: "index_wines_oenologists_on_wine_id"
  end

  create_table "wines_strains", force: :cascade do |t|
    t.bigint "wine_id"
    t.bigint "strain_id"
    t.float "porcentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["strain_id"], name: "index_wines_strains_on_strain_id"
    t.index ["wine_id"], name: "index_wines_strains_on_wine_id"
  end

  add_foreign_key "wines_oenologists", "oenologists"
  add_foreign_key "wines_oenologists", "wines"
  add_foreign_key "wines_strains", "strains"
  add_foreign_key "wines_strains", "wines"
end
