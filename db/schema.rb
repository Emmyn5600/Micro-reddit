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

ActiveRecord::Schema.define(version: 2021_04_15_001805) do

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "commentaries", force: :cascade do |t|
    t.string "content"
    t.integer "author_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "post2s_id", null: false
    t.index ["author_id"], name: "index_commentaries_on_author_id"
    t.index ["post2s_id"], name: "index_commentaries_on_post2s_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.integer "author_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_id"], name: "index_comments_on_author_id"
  end

  create_table "post2s", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.integer "author_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_id"], name: "index_post2s_on_author_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "Content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "commentaries", "authors"
  add_foreign_key "commentaries", "post2s", column: "post2s_id"
  add_foreign_key "comments", "authors"
  add_foreign_key "post2s", "authors"
end
