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

ActiveRecord::Schema[7.0].define(version: 2022_12_07_232646) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cutaway_page_versions", force: :cascade do |t|
    t.string "name"
    t.integer "language_id"
    t.text "header"
    t.text "body"
    t.boolean "index", default: false
    t.boolean "visible", default: true
    t.text "images"
    t.integer "cutaway_page_id"
    t.string "route_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cutaway_pages", force: :cascade do |t|
    t.integer "parent_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "footers", force: :cascade do |t|
    t.text "code"
    t.boolean "active"
    t.string "name"
    t.integer "language_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string "code"
    t.boolean "default"
    t.integer "views"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "navs", force: :cascade do |t|
    t.text "code"
    t.boolean "active"
    t.string "name"
    t.integer "language_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "script_connects", force: :cascade do |t|
    t.integer "script_id"
    t.integer "cutaway_page_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scripts", force: :cascade do |t|
    t.text "code"
    t.string "description"
    t.string "link_tag"
    t.boolean "as_file", default: false
    t.boolean "for_all_pages", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "style_connects", force: :cascade do |t|
    t.integer "style_id"
    t.integer "cutaway_page_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "styles", force: :cascade do |t|
    t.text "code"
    t.string "description"
    t.string "link_tag"
    t.boolean "as_file", default: false
    t.boolean "for_all_pages", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.boolean "bookkeeper"
    t.boolean "developer"
    t.boolean "superuser"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
