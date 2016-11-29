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

ActiveRecord::Schema.define(version: 20161129185217) do

  create_table "program_requirements", force: :cascade do |t|
    t.integer  "min_age"
    t.integer  "max_age"
    t.integer  "max_income"
    t.integer  "assets_threshold"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "min_income"
    t.integer  "program_id"
    t.integer  "zip_code_range_start"
    t.integer  "zip_code_range_end"
    t.boolean  "disabled",             default: false, null: false
    t.boolean  "veteran",              default: false, null: false
    t.index ["program_id"], name: "index_program_requirements_on_program_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "link"
  end

  create_table "searches", force: :cascade do |t|
    t.integer  "zipcode"
    t.integer  "age"
    t.integer  "income"
    t.boolean  "veteran"
    t.boolean  "disabled"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "assetAmount"
    t.integer  "household"
  end

  create_table "users", force: :cascade do |t|
    t.string  "first_name"
    t.string  "email"
    t.string  "password"
    t.boolean "administrator"
    t.string  "last_name"
    t.string  "password_digest"
  end

end
