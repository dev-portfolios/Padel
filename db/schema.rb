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

ActiveRecord::Schema[8.0].define(version: 2025_01_12_044859) do
  create_table "amenities", force: :cascade do |t|
    t.string "title_en"
    t.string "title_cn"
    t.integer "position"
    t.string "url"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courts", force: :cascade do |t|
    t.integer "venue_id"
    t.string "court_size", default: "double"
    t.string "court_type", default: "outdoor"
    t.string "name_en"
    t.string "name_cn"
    t.text "description_en"
    t.text "description_cn"
    t.decimal "unit_price", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["court_size"], name: "index_courts_on_court_size"
    t.index ["court_type"], name: "index_courts_on_court_type"
    t.index ["name_cn"], name: "index_courts_on_name_cn"
    t.index ["name_en"], name: "index_courts_on_name_en"
    t.index ["venue_id"], name: "index_courts_on_venue_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name", default: ""
    t.string "last_name", default: ""
    t.string "mobile_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["mobile_phone"], name: "index_users_on_mobile_phone"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "venues", force: :cascade do |t|
    t.string "email"
    t.string "contact_phone"
    t.string "city_en"
    t.string "city_cn"
    t.string "name_en"
    t.string "name_cn"
    t.text "description_en"
    t.text "description_cn"
    t.text "rules_en"
    t.text "rules_cn"
    t.string "address_en"
    t.string "address_cn"
    t.string "area_en"
    t.string "area_cn"
    t.decimal "latitude", precision: 15, scale: 10
    t.decimal "longitude", precision: 15, scale: 10
    t.integer "late_cancellation_in_minutes", default: 0
    t.boolean "late_cancellation", default: false
    t.boolean "active", default: true
    t.integer "advanced_bookable_days", default: 7
    t.string "image"
    t.time "opening_at"
    t.time "closing_at"
    t.string "business_hours"
    t.integer "confirm_in_minutes", default: 10
    t.integer "min_bookable_minutes", default: 60
    t.integer "max_bookable_units", default: 3
    t.decimal "unit_price", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_cn"], name: "index_venues_on_address_cn"
    t.index ["address_en"], name: "index_venues_on_address_en"
    t.index ["area_cn"], name: "index_venues_on_area_cn"
    t.index ["area_en"], name: "index_venues_on_area_en"
    t.index ["name_cn"], name: "index_venues_on_name_cn"
    t.index ["name_en"], name: "index_venues_on_name_en"
  end

  add_foreign_key "courts", "venues"
end
