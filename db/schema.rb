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

ActiveRecord::Schema.define(version: 2021_07_31_133043) do

  create_table "passes", charset: "utf8", force: :cascade do |t|
    t.integer "amount"
    t.string "p_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "toll_booth_trackers", charset: "utf8", force: :cascade do |t|
    t.integer "vehicle_id"
    t.integer "toll_both_id"
    t.integer "toll_id"
    t.boolean "purchased"
    t.boolean "processed"
    t.integer "pass_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["toll_id", "toll_both_id"], name: "index_toll_booth_trackers_on_toll_id_and_toll_both_id"
  end

  create_table "toll_booths", charset: "utf8", force: :cascade do |t|
    t.integer "toll_id"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "toll_companies", charset: "utf8", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "toll_leader_boards", charset: "utf8", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tolls", charset: "utf8", force: :cascade do |t|
    t.integer "toll_company_id"
    t.string "name"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vehicle_passes", charset: "utf8", force: :cascade do |t|
    t.integer "vehicle_id"
    t.integer "toll_id"
    t.integer "toll_booth_id"
    t.integer "pass_id"
    t.datetime "expires_at"
    t.string "direction"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["toll_id"], name: "index_vehicle_passes_on_toll_id_and_toll_id"
  end

  create_table "vehicles", charset: "utf8", force: :cascade do |t|
    t.string "reg_no"
    t.string "model"
    t.string "company"
    t.integer "no_of_wheels"
    t.string "v_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
