# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_04_03_054251) do
  create_table "accounts", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "devilstreasure_blogs", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.string "author"
    t.string "avatar"
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "platform"
    t.string "image"
    t.string "alt_id"
    t.string "description"
    t.string "githublink"
    t.string "blogspage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.string "albumart"
    t.string "description"
    t.string "genre"
    t.string "songfile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tetris_blogs", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.string "author"
    t.string "avatar"
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "umleditor_blogs", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.string "author"
    t.string "avatar"
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wtc_blogs", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.string "author"
    t.string "avatar"
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
