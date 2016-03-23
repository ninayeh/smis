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

ActiveRecord::Schema.define(version: 20160323081709) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "book_lists", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.string   "file"
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "laboratories", force: :cascade do |t|
    t.string   "name"
    t.string   "professor_name"
    t.text     "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "department_id"
    t.string   "avatar"
  end

  add_index "laboratories", ["department_id"], name: "index_laboratories_on_department_id", using: :btree

  create_table "missions", force: :cascade do |t|
    t.string   "title"
    t.date     "end_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "schedule_id"
    t.date     "start_date"
    t.boolean  "check"
  end

  add_index "missions", ["schedule_id"], name: "index_missions_on_schedule_id", using: :btree

  create_table "note_comments", force: :cascade do |t|
    t.text     "comment"
    t.string   "user_name"
    t.integer  "note_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "note_comments", ["note_id"], name: "index_note_comments_on_note_id", using: :btree

  create_table "notes", force: :cascade do |t|
    t.string   "title"
    t.string   "category"
    t.text     "content"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "final_content"
    t.integer  "user_id"
    t.boolean  "published"
  end

  add_index "notes", ["user_id"], name: "index_notes_on_user_id", using: :btree

  create_table "redactor_images", force: :cascade do |t|
    t.string   "image",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resource_comments", force: :cascade do |t|
    t.text     "comment"
    t.string   "user_name"
    t.integer  "resource_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "resource_comments", ["resource_id"], name: "index_resource_comments_on_resource_id", using: :btree

  create_table "resources", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "url"
    t.string   "file"
    t.boolean  "published"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "resources", ["user_id"], name: "index_resources_on_user_id", using: :btree

  create_table "schedules", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.boolean  "published"
  end

  add_index "schedules", ["user_id"], name: "index_schedules_on_user_id", using: :btree

  create_table "shares", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "theses", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "book_list"
    t.string   "slide"
    t.boolean  "published"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "final"
  end

  add_index "theses", ["user_id"], name: "index_theses_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "role"
    t.string   "name"
    t.integer  "department_id"
    t.integer  "laboratory_id"
  end

  add_index "users", ["department_id"], name: "index_users_on_department_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["laboratory_id"], name: "index_users_on_laboratory_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "laboratories", "departments"
  add_foreign_key "missions", "schedules"
  add_foreign_key "note_comments", "notes"
  add_foreign_key "notes", "users"
  add_foreign_key "resource_comments", "resources"
  add_foreign_key "resources", "users"
  add_foreign_key "schedules", "users"
  add_foreign_key "theses", "users"
  add_foreign_key "users", "departments"
  add_foreign_key "users", "laboratories"
end
