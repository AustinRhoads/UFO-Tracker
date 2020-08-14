# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 3) do

  create_table "case_files", force: :cascade do |t|
    t.string "name"
    t.string "date"
    t.string "time"
    t.string "location"
    t.string "country"
    t.string "description"
  end

  create_table "encounters", force: :cascade do |t|
    t.string "name"
    t.string "date"
    t.string "time"
    t.string "location"
    t.string "country"
    t.float "latitude"
    t.float "longitude"
    t.integer "user_id"
    t.integer "kind"
    t.string "other_kind"
    t.string "description"
    t.integer "mass_encounter_id"
    t.boolean "men_in_black", default: false
    t.boolean "military_involved", default: false
    t.boolean "law_enforcement_involved", default: false
    t.boolean "happen_to_user", default: true
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.boolean "is_military", default: false
    t.boolean "is_law_enforcement", default: false
  end

end
