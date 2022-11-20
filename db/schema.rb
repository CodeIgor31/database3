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

ActiveRecord::Schema[7.0].define(version: 2022_11_20_125742) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: :cascade do |t|
    t.string "fio"
    t.json "info"
    t.integer "sostav_id"
  end

  create_table "definitions", force: :cascade do |t|
    t.text "desc"
    t.integer "perf_id"
  end

  create_table "performances", force: :cascade do |t|
    t.string "name"
    t.string "producer"
    t.date "play_date"
    t.integer "sost_id"
    t.string "gend"
  end

  create_table "sostav_secs", force: :cascade do |t|
    t.string "name"
  end

  create_table "special_guests", force: :cascade do |t|
    t.string "fio"
    t.integer "tick_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.money "cost", scale: 2
    t.integer "performance"
    t.integer "row_place", array: true
  end

end
