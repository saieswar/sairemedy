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

ActiveRecord::Schema.define(version: 20190409162744) do

  create_table "appointments", force: :cascade do |t|
    t.string   "email",      limit: 255
    t.string   "name",       limit: 255
    t.string   "phone",      limit: 255
    t.text     "reason",     limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "astro_pdfs", force: :cascade do |t|
    t.string   "avatar",     limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "astrologies", force: :cascade do |t|
    t.string   "first_sign",  limit: 255
    t.string   "second_sign", limit: 255
    t.string   "remedy",      limit: 255
    t.string   "pdf_path",    limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "average_caches", force: :cascade do |t|
    t.integer  "rater_id",      limit: 4
    t.integer  "rateable_id",   limit: 4
    t.string   "rateable_type", limit: 255
    t.float    "avg",           limit: 24,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "casts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "address1",   limit: 255
    t.string   "address2",   limit: 255
    t.string   "city",       limit: 255
    t.string   "state",      limit: 255
    t.string   "country",    limit: 255
    t.string   "mobile",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   limit: 4,     default: 0, null: false
    t.integer  "attempts",   limit: 4,     default: 0, null: false
    t.text     "handler",    limit: 65535,             null: false
    t.text     "last_error", limit: 65535
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by",  limit: 255
    t.string   "queue",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "matrimonies", force: :cascade do |t|
    t.string   "full_name",       limit: 255
    t.string   "surname",         limit: 255
    t.string   "qualification",   limit: 255
    t.integer  "cast_id",         limit: 4
    t.string   "category",        limit: 255
    t.string   "gowtram",         limit: 255
    t.string   "income",          limit: 255
    t.string   "working_company", limit: 255
    t.string   "company_address", limit: 255
    t.string   "designation",     limit: 255
    t.string   "marriage_status", limit: 255
    t.string   "height",          limit: 255
    t.string   "weight",          limit: 255
    t.string   "hobbies",         limit: 255
    t.string   "body_skin_color", limit: 255
    t.integer  "nakshatra_id",    limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "user_id",         limit: 4
  end

  add_index "matrimonies", ["cast_id"], name: "index_matrimonies_on_cast_id", using: :btree
  add_index "matrimonies", ["nakshatra_id"], name: "index_matrimonies_on_nakshatra_id", using: :btree
  add_index "matrimonies", ["user_id"], name: "index_matrimonies_on_user_id", using: :btree

  create_table "nakshatras", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "offers", force: :cascade do |t|
    t.string   "status",       limit: 255
    t.string   "description",  limit: 255
    t.boolean  "active_offer"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.datetime "booking_date"
  end

  create_table "overall_averages", force: :cascade do |t|
    t.integer  "rateable_id",   limit: 4
    t.string   "rateable_type", limit: 255
    t.float    "overall_avg",   limit: 24,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pandit_offers", force: :cascade do |t|
    t.integer  "pandit_id",    limit: 4
    t.integer  "offer_id",     limit: 4
    t.boolean  "active"
    t.string   "note",         limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id",      limit: 4
    t.date     "booking_date"
  end

  create_table "pandits", force: :cascade do |t|
    t.string   "deals",      limit: 255
    t.string   "door_no",    limit: 255
    t.string   "street",     limit: 255
    t.string   "city",       limit: 255
    t.string   "state",      limit: 255
    t.string   "zip_code",   limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "working_as", limit: 255
    t.string   "experience", limit: 255
    t.text     "address",    limit: 65535
    t.string   "district",   limit: 255
  end

  add_index "pandits", ["user_id"], name: "index_pandits_on_user_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.text     "description",        limit: 65535
    t.decimal  "price",                            precision: 8, scale: 2
    t.string   "image",              limit: 255
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
    t.boolean  "default_for_pandit"
  end

  create_table "rates", force: :cascade do |t|
    t.integer  "rater_id",      limit: 4
    t.integer  "rateable_id",   limit: 4
    t.string   "rateable_type", limit: 255
    t.float    "stars",         limit: 24,  null: false
    t.string   "dimension",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rates", ["rateable_id", "rateable_type"], name: "index_rates_on_rateable_id_and_rateable_type", using: :btree
  add_index "rates", ["rater_id"], name: "index_rates_on_rater_id", using: :btree

  create_table "rating_caches", force: :cascade do |t|
    t.integer  "cacheable_id",   limit: 4
    t.string   "cacheable_type", limit: 255
    t.float    "avg",            limit: 24,  null: false
    t.integer  "qty",            limit: 4,   null: false
    t.string   "dimension",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rating_caches", ["cacheable_id", "cacheable_type"], name: "index_rating_caches_on_cacheable_id_and_cacheable_type", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "",    null: false
    t.string   "encrypted_password",     limit: 255,   default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.string   "name",                   limit: 255
    t.string   "avatar",                 limit: 255
    t.date     "dob"
    t.boolean  "gender"
    t.string   "phone",                  limit: 255
    t.string   "aadhar_card",            limit: 255
    t.text     "address",                limit: 65535
    t.string   "reference_no",           limit: 255
    t.string   "serial_no",              limit: 255
    t.boolean  "is_admin",                             default: false
    t.boolean  "is_paid",                              default: false
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.integer  "contact_id",             limit: 4
    t.string   "role",                   limit: 255
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["contact_id"], name: "index_users_on_contact_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "matrimonies", "casts"
  add_foreign_key "matrimonies", "nakshatras"
  add_foreign_key "matrimonies", "users"
  add_foreign_key "pandits", "users"
  add_foreign_key "users", "contacts"
end
