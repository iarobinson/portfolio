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

ActiveRecord::Schema.define(version: 2020_05_03_103635) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "military_rank_tests", force: :cascade do |t|
    t.string "result"
    t.bigint "user_id"
    t.integer "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_military_rank_tests_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "option_one"
    t.string "option_two"
    t.string "option_three"
    t.string "option_four"
    t.string "option_five"
    t.string "answer"
    t.string "inquiry"
    t.bigint "military_rank_test_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["military_rank_test_id"], name: "index_questions_on_military_rank_test_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.string "biography"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "military_rank_tests", "users"
  add_foreign_key "questions", "military_rank_tests"
end
