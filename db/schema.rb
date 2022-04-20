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

ActiveRecord::Schema[7.0].define(version: 2022_04_19_212100) do
  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.integer "organization_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_addresses_on_organization_id"
  end

  create_table "hours", force: :cascade do |t|
    t.string "day"
    t.string "opens"
    t.string "closes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "organization_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.text "about"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "provided_services", force: :cascade do |t|
    t.integer "organization_id", null: false
    t.integer "services_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_provided_services_on_organization_id"
    t.index ["services_id"], name: "index_provided_services_on_services_id"
  end

  create_table "services", force: :cascade do |t|
    t.boolean "long_term_housing"
    t.boolean "immediate_housing"
    t.boolean "food"
    t.boolean "families"
    t.boolean "expenses"
    t.boolean "mental_health"
    t.boolean "substance_use"
    t.boolean "immigration"
    t.boolean "prisoner"
    t.boolean "domestic_violence"
    t.boolean "us_military"
    t.string "other"
    t.integer "organization_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_services_on_organization_id"
  end

  add_foreign_key "addresses", "organizations"
  add_foreign_key "provided_services", "organizations"
  add_foreign_key "provided_services", "services", column: "services_id"
  add_foreign_key "services", "organizations"
end
