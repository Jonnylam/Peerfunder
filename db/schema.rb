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

ActiveRecord::Schema.define(version: 20150504173221) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accreditations", force: :cascade do |t|
    t.string   "legal_name"
    t.string   "investing_entity_type"
    t.string   "type_of_accreditation"
    t.string   "signature"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "user_id"
    t.boolean  "accreditation_status",  default: false
  end

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
    t.string   "product"
    t.string   "founders"
    t.string   "previous_investors"
    t.string   "team"
  end

  create_table "due_diligences", force: :cascade do |t|
    t.integer  "round_id"
    t.integer  "company_id"
    t.string   "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "follows", force: :cascade do |t|
    t.integer  "followable_id",                   null: false
    t.string   "followable_type",                 null: false
    t.integer  "follower_id",                     null: false
    t.string   "follower_type",                   null: false
    t.boolean  "blocked",         default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "follows", ["followable_id", "followable_type"], name: "fk_followables", using: :btree
  add_index "follows", ["follower_id", "follower_type"], name: "fk_follows", using: :btree

  create_table "fundraisings", force: :cascade do |t|
    t.integer  "round_id"
    t.integer  "user_id"
    t.integer  "company_id"
    t.string   "email"
    t.string   "subject"
    t.text     "emailcontent"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "investments", force: :cascade do |t|
    t.integer  "investor_id"
    t.integer  "round_id"
    t.integer  "company_id"
    t.integer  "amount"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "invitations", force: :cascade do |t|
    t.integer  "inviter_id"
    t.integer  "invitee_id"
    t.integer  "round_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mailboxer_conversation_opt_outs", force: :cascade do |t|
    t.integer "unsubscriber_id"
    t.string  "unsubscriber_type"
    t.integer "conversation_id"
  end

  add_index "mailboxer_conversation_opt_outs", ["conversation_id"], name: "index_mailboxer_conversation_opt_outs_on_conversation_id", using: :btree
  add_index "mailboxer_conversation_opt_outs", ["unsubscriber_id", "unsubscriber_type"], name: "index_mailboxer_conversation_opt_outs_on_unsubscriber_id_type", using: :btree

  create_table "mailboxer_conversations", force: :cascade do |t|
    t.string   "subject",    default: ""
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "mailboxer_notifications", force: :cascade do |t|
    t.string   "type"
    t.text     "body"
    t.string   "subject",              default: ""
    t.integer  "sender_id"
    t.string   "sender_type"
    t.integer  "conversation_id"
    t.boolean  "draft",                default: false
    t.string   "notification_code"
    t.integer  "notified_object_id"
    t.string   "notified_object_type"
    t.string   "attachment"
    t.datetime "updated_at",                           null: false
    t.datetime "created_at",                           null: false
    t.boolean  "global",               default: false
    t.datetime "expires"
  end

  add_index "mailboxer_notifications", ["conversation_id"], name: "index_mailboxer_notifications_on_conversation_id", using: :btree
  add_index "mailboxer_notifications", ["notified_object_id", "notified_object_type"], name: "index_mailboxer_notifications_on_notified_object_id_and_type", using: :btree
  add_index "mailboxer_notifications", ["sender_id", "sender_type"], name: "index_mailboxer_notifications_on_sender_id_and_sender_type", using: :btree
  add_index "mailboxer_notifications", ["type"], name: "index_mailboxer_notifications_on_type", using: :btree

  create_table "mailboxer_receipts", force: :cascade do |t|
    t.integer  "receiver_id"
    t.string   "receiver_type"
    t.integer  "notification_id",                            null: false
    t.boolean  "is_read",                    default: false
    t.boolean  "trashed",                    default: false
    t.boolean  "deleted",                    default: false
    t.string   "mailbox_type",    limit: 25
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "mailboxer_receipts", ["notification_id"], name: "index_mailboxer_receipts_on_notification_id", using: :btree
  add_index "mailboxer_receipts", ["receiver_id", "receiver_type"], name: "index_mailboxer_receipts_on_receiver_id_and_receiver_type", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "company_id"
    t.text     "story"
    t.text     "product_overview"
    t.text     "company_stage"
    t.text     "year_founded"
    t.text     "number_of_employees"
    t.string   "pitch_video"
    t.text     "problem"
    t.text     "opportunity"
    t.text     "management_team"
    t.text     "advisors"
    t.text     "previous_investors"
    t.text     "founders"
    t.text     "management_experience"
    t.text     "customer_problem"
    t.text     "other_products"
    t.text     "target_market"
    t.text     "customers"
    t.text     "sales_market_strategy"
    t.text     "competitors"
    t.text     "competitive_advantage"
    t.text     "business_plan"
    t.text     "short_term_goals"
    t.text     "long_term_goals"
    t.text     "market_strategy"
    t.text     "use_of_proceeds"
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
    t.string   "first_name",                                      null: false
    t.string   "last_name",                                       null: false
    t.string   "email",                                           null: false
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
    t.string   "user_type",                    default: "normal"
    t.string   "avatar"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree

  add_foreign_key "mailboxer_conversation_opt_outs", "mailboxer_conversations", column: "conversation_id", name: "mb_opt_outs_on_conversations_id"
  add_foreign_key "mailboxer_notifications", "mailboxer_conversations", column: "conversation_id", name: "notifications_on_conversation_id"
  add_foreign_key "mailboxer_receipts", "mailboxer_notifications", column: "notification_id", name: "receipts_on_notification_id"
end
