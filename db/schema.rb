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

ActiveRecord::Schema.define(version: 20141106045056) do

  create_table "advisors", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "student_count"
    t.string   "specialty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "course_admins", force: true do |t|
    t.string   "course_name"
    t.string   "course_number"
    t.string   "course_description"
    t.string   "credits"
    t.string   "pre_req"
    t.string   "co_req"
    t.string   "sugg_year"
    t.string   "sugg_term"
    t.string   "next_off_year"
    t.string   "next_off_term"
    t.string   "generally_off"
    t.string   "major"
    t.string   "minor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "course_name"
    t.string   "course_number"
    t.string   "credits"
    t.string   "pre_req"
    t.string   "co_req"
    t.string   "sugg_year"
    t.string   "sugg_term"
    t.string   "next_off_year"
    t.string   "next_off_term"
    t.string   "generally_off"
    t.string   "major"
    t.string   "minor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "faculties", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
