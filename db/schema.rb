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

ActiveRecord::Schema.define(version: 20170314133331) do

  create_table "applications", force: :cascade do |t|
    t.string   "name"
    t.integer  "publisher_id"
    t.integer  "platform_id"
    t.integer  "fyberapplicationid"
    t.string   "dashboardlink"
    t.string   "ticketlink"
    t.string   "buildlink"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text     "text"
    t.string   "name"
    t.integer  "realtest_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "features", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "platforms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publishers", force: :cascade do |t|
    t.string   "name"
    t.string   "dashboardlink"
    t.integer  "fyberpublisherid"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "realtestresults", force: :cascade do |t|
    t.integer  "realtest_id"
    t.integer  "test_id"
    t.integer  "testvalue_id"
    t.integer  "testresult_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "realtests", force: :cascade do |t|
    t.integer  "application_id"
    t.integer  "publisher_id"
    t.integer  "platform_id"
    t.integer  "feature_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "tests", force: :cascade do |t|
    t.integer  "feature_id"
    t.integer  "orderid"
    t.string   "name"
    t.text     "criteria"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "testvalues", force: :cascade do |t|
    t.string   "value"
    t.integer  "test_id"
    t.string   "result_state"
    t.string   "result_recommendation"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end
