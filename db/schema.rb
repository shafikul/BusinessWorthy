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

ActiveRecord::Schema.define(version: 20160413043917) do

  create_table "global_goals", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "org_name",        limit: 255
    t.string   "org_title",       limit: 255
    t.text     "what_is_doing",   limit: 65535
    t.text     "why_doing",       limit: 65535
    t.text     "impact",          limit: 65535
    t.string   "image_link",      limit: 255
    t.integer  "impact_criteria", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "subscribes", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "email",        limit: 255
    t.string   "country",      limit: 255
    t.string   "company",      limit: 255
    t.string   "turnover",     limit: 255
    t.integer  "no_employees", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
