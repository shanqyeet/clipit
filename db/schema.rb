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

ActiveRecord::Schema.define(version: 20180428085358) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.json "logo"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_brands_on_user_id"
  end

  create_table "call_to_actions", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "brand_id"
    t.string "description"
    t.string "button_text"
    t.string "position"
    t.string "bg_color"
    t.string "bg_border_size"
    t.string "bg_border_type"
    t.string "bg_border_color"
    t.string "bg_border_radius"
    t.string "btn_color"
    t.string "btn_border_size"
    t.string "btn_border_type"
    t.string "btn_border_color"
    t.string "btn_border_radius"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "button_link"
    t.integer "count", default: 0
    t.integer "status", default: 0
    t.index ["brand_id"], name: "index_call_to_actions_on_brand_id"
    t.index ["user_id"], name: "index_call_to_actions_on_user_id"
  end

  create_table "clips", force: :cascade do |t|
    t.bigint "call_to_action_id"
    t.bigint "user_id"
    t.string "page_link"
    t.string "short_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "count", default: 0
    t.integer "status", default: 0
    t.index ["call_to_action_id"], name: "index_clips_on_call_to_action_id"
    t.index ["user_id"], name: "index_clips_on_user_id"
  end

  create_table "cta_counts", force: :cascade do |t|
    t.bigint "call_to_action_id"
    t.bigint "clip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["call_to_action_id"], name: "index_cta_counts_on_call_to_action_id"
    t.index ["clip_id"], name: "index_cta_counts_on_clip_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

end
