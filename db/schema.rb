# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150315201618) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "company_logo"
    t.string   "elevator_pitch"
    t.string   "location"
    t.string   "industry_type"
    t.string   "website_url"
    t.text     "problem_description"
    t.text     "solution_description"
    t.text     "product_description"
    t.text     "business_description"
    t.text     "market_description"
    t.text     "competition_description"
    t.text     "advantages_description"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "owner_id"
  end

  create_table "due_diligences", force: :cascade do |t|
    t.integer  "round_id"
    t.integer  "company_id"
    t.string   "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "investments", force: :cascade do |t|
    t.integer  "investor_id"
    t.integer  "round_id"
    t.integer  "company_id"
    t.integer  "amount"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "rounds", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "lead_investor_id"
    t.integer  "funding_goal"
    t.string   "term_sheet"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "amount_raised",    default: 0
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",                                   null: false
    t.string   "last_name",                                    null: false
    t.string   "email",                                        null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.text     "biography"
    t.text     "experience"
    t.boolean  "accreditation",                default: false
    t.string   "profile_photo_url"
    t.string   "location"
    t.date     "dob"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "user_type"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree

end
