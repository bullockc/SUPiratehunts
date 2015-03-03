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

ActiveRecord::Schema.define(version: 20150303005338) do

  create_table "gps", force: :cascade do |t|
    t.string   "directions"
    t.string   "correct_coordinates"
    t.string   "submitted_coordinates"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

<<<<<<< HEAD
=======
  create_table "hunt", force: :cascade do |t|
    t.string   "huntname"
    t.string   "owner"
    t.integer  "task_id"
    t.integer  "status"
    t.boolean  "availability"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "start_location"
    t.text     "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end
>>>>>>> master

  create_table "hunts", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.boolean  "active"
    t.boolean  "published"
    t.boolean  "public"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "start_location"
    t.text     "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string   "prompt"
    t.boolean  "submitted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
<<<<<<< HEAD
=======
  end

  create_table "pirate", force: :cascade do |t|
    t.string   "name"
    t.text     "hunts_created"
    t.integer  "hunts_joined_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "pirate_hunts", force: :cascade do |t|
    t.boolean  "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pirate_tasks", force: :cascade do |t|
    t.boolean  "answer_uploaded"
    t.boolean  "completed"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
>>>>>>> master
  end

  create_table "pirates", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.string   "display_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "question"
    t.string   "right_answer"
    t.string   "submitted_answer"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "points"
    t.string   "clue"
    t.boolean  "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user", force: :cascade do |t|
    t.integer  "hunt_id"
    t.integer  "type"
    t.integer  "points"
    t.string   "owner"
    t.string   "user"
    t.string   "clue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_hunt_task", force: :cascade do |t|
    t.integer  "hunt_id"
    t.integer  "task_id"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
