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

ActiveRecord::Schema.define(version: 2022_10_23_093357) do

  create_table "candidates", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "middle_name"
    t.string "adress"
    t.string "gender"
    t.string "contact"
    t.string "email"
    t.integer "resume_id"
    t.integer "job_post_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "company_name"
    t.string "contact_person"
    t.string "company_contact"
    t.string "company_adress"
    t.string "company_email"
    t.string "company_detail"
    t.integer "job_post_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "job_posts", force: :cascade do |t|
    t.integer "company_id"
    t.string "job_title"
    t.string "post"
    t.integer "no_vacancy"
    t.string "start_date"
    t.integer "candidate_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "description"
    t.string "company"
    t.integer "experience"
    t.string "requirements"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "resumes", force: :cascade do |t|
    t.integer "candidate_id"
    t.string "Resume_headline"
    t.string "path"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
