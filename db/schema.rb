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

ActiveRecord::Schema.define(version: 20160906031959) do

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "teacher_id"
    t.integer  "rating_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["rating_id"], name: "index_comments_on_rating_id"
  add_index "comments", ["teacher_id"], name: "index_comments_on_teacher_id"

  create_table "ratings", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "teacher_id"
    t.integer  "attendance"
    t.integer  "studies"
    t.integer  "discussion"
    t.integer  "group_work"
    t.integer  "independent_work"
    t.integer  "distractability"
    t.integer  "disruptability"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "ratings", ["student_id"], name: "index_ratings_on_student_id"
  add_index "ratings", ["teacher_id"], name: "index_ratings_on_teacher_id"

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
