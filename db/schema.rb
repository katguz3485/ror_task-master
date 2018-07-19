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

ActiveRecord::Schema.define(version: 20180719202116) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "participations", force: :cascade do |t|
    t.integer  "student_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "subject_item_id"
  end

  add_index "participations", ["student_id"], name: "index_participations_on_student_id", using: :btree
  add_index "participations", ["subject_item_id"], name: "index_participations_on_subject_item_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subject_items", force: :cascade do |t|
    t.integer  "teacher_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "participation_id"
  end

  add_index "subject_items", ["participation_id"], name: "index_subject_items_on_participation_id", using: :btree
  add_index "subject_items", ["teacher_id"], name: "index_subject_items_on_teacher_id", using: :btree

  create_table "teachers", force: :cascade do |t|
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "academic_title"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "participations", "students"
  add_foreign_key "participations", "subject_items"
  add_foreign_key "subject_items", "participations"
  add_foreign_key "subject_items", "teachers"
end
