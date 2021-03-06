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

ActiveRecord::Schema.define(version: 2021_03_01_221812) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "line1"
    t.string "line2"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "park_id"
  end

  create_table "fees", force: :cascade do |t|
    t.string "cost"
    t.string "description"
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "park_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "credit"
    t.string "title"
    t.string "alt_text"
    t.string "caption"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "park_id"
  end

  create_table "parks", force: :cascade do |t|
    t.string "full_name"
    t.string "description"
    t.string "latitude"
    t.string "longitude"
    t.string "lat_long"
    t.string "state"
    t.string "phone"
    t.string "email"
    t.string "directions"
    t.string "weather"
    t.string "name"
    t.string "park_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
