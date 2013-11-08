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

ActiveRecord::Schema.define(version: 20131108035717) do

  create_table "distributor_profiles", force: true do |t|
    t.string   "company_name"
    t.string   "contact_name"
    t.string   "address"
    t.string   "website"
    t.string   "contact_email"
    t.text     "tagline"
    t.text     "description"
    t.integer  "distributor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "supplier_profiles", force: true do |t|
    t.string   "company_name"
    t.string   "contact_name"
    t.string   "address"
    t.string   "website"
    t.string   "contact_email"
    t.text     "tagline"
    t.text     "description"
    t.integer  "supplier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username",         null: false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
