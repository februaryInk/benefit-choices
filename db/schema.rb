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

ActiveRecord::Schema.define(version: 20160719233647) do

  create_table "jobs", force: :cascade do |t|
    t.date     "date"
    t.string   "client_email"
    t.string   "client_name"
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "jobs_services", force: :cascade do |t|
    t.integer  "job_id"
    t.integer  "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_jobs_services_on_job_id"
    t.index ["service_id"], name: "index_jobs_services_on_service_id"
  end

  create_table "photos", force: :cascade do |t|
    t.integer  "job_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["job_id"], name: "index_photos_on_job_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "job_id"
    t.integer  "rating",     default: 5
    t.text     "content"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["job_id"], name: "index_reviews_on_job_id"
  end

  create_table "services", force: :cascade do |t|
    t.string   "type"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "banner_file_name"
    t.string   "banner_content_type"
    t.integer  "banner_file_size"
    t.datetime "banner_updated_at"
    t.string   "thumbnail_file_name"
    t.string   "thumbnail_content_type"
    t.integer  "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
    t.string   "name"
    t.text     "description"
  end

end
