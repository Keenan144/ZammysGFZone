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

ActiveRecord::Schema.define(version: 20150816001131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blog_posts", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "site_url"
    t.string   "title"
    t.datetime "date"
    t.integer  "votes"
    t.text     "blog_content"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "views"
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "user_post_id"
    t.integer  "blog_post_id"
    t.string   "title"
    t.datetime "date"
    t.integer  "votes"
    t.text     "comment"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "fast_foods", force: :cascade do |t|
    t.integer  "amount_of_gf_items"
    t.string   "confirmed_gf"
    t.integer  "expensive_rating"
    t.integer  "taste_rating"
    t.string   "location"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "food_categories", force: :cascade do |t|
    t.string   "category_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string   "type"
    t.string   "confirmed_gf"
    t.integer  "price"
    t.integer  "taste"
    t.integer  "difficulty"
    t.string   "where_to_find"
    t.integer  "rating"
    t.integer  "views"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "food_category_id"
    t.string   "name"
    t.integer  "user_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.integer  "difficulty"
    t.integer  "time"
    t.integer  "taste_rating"
    t.string   "confirmed_gf"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "food_category_id"
  end

  create_table "replies", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "comment_id"
    t.text     "reply"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.integer  "amount_of_gf_items"
    t.string   "confirmed_gf"
    t.integer  "expensive_rating"
    t.integer  "taste_rating"
    t.string   "location"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "static_pages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "system_metrics", force: :cascade do |t|
    t.integer "site_visits",     default: 1
    t.integer "site_errors",     default: 0
    t.integer "about_views",     default: 1
    t.integer "logins",          default: 1
    t.integer "breakfast_views", default: 1
    t.integer "lunch_views",     default: 1
    t.integer "dinner_views",    default: 1
  end

  create_table "user_posts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "blog_post_id"
    t.string   "title"
    t.datetime "date"
    t.integer  "votes"
    t.text     "post_content"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "remember_digest"
    t.datetime "last_login"
    t.integer  "login_count",     default: 0
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "admin"
  end

end
