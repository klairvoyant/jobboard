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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121218171822) do

  create_table "alerts", :force => true do |t|
    t.integer  "user_id"
    t.integer  "alert_type"
    t.text     "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "category"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "certifications", :force => true do |t|
    t.integer  "resume_id"
    t.string   "certification_name"
    t.date     "certification_year"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "educations", :force => true do |t|
    t.integer  "resume_id"
    t.string   "school_name"
    t.string   "school_type"
    t.string   "state"
    t.string   "country"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "course"
    t.string   "level"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "employment_histories", :force => true do |t|
    t.integer  "resume_id"
    t.string   "company_name"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "job_title"
    t.text     "job_description"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "file_uploads", :force => true do |t|
    t.integer  "user_id"
    t.integer  "file_type"
    t.string   "file_path"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "interest_areas", :force => true do |t|
    t.string   "interest"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "interviews", :force => true do |t|
    t.integer  "resume_id"
    t.integer  "interview_type"
    t.integer  "job_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "user_id"
  end

  create_table "job_details", :force => true do |t|
    t.string   "job_title"
    t.string   "category"
    t.string   "company"
    t.date     "job_posted_date"
    t.boolean  "direct_employee"
    t.boolean  "staffing_agency"
    t.string   "job_type"
    t.integer  "experience"
    t.string   "education_level"
    t.text     "description"
    t.string   "zip_code"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "job_types", :force => true do |t|
    t.string   "job_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "languages", :force => true do |t|
    t.integer  "resume_id"
    t.string   "language_name"
    t.string   "language_proficiency"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "linkedin_details", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "first_name"
    t.string   "lastName"
    t.string   "headline"
    t.string   "public_profile_url"
  end

  create_table "message_copies", :force => true do |t|
    t.integer  "sent_messageable_id"
    t.string   "sent_messageable_type"
    t.integer  "recipient_id"
    t.string   "subject"
    t.text     "body"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "message_copies", ["sent_messageable_id", "recipient_id"], :name => "outbox_idx"

  create_table "messages", :force => true do |t|
    t.integer  "received_messageable_id"
    t.string   "received_messageable_type"
    t.integer  "sender_id"
    t.string   "subject"
    t.text     "body"
    t.boolean  "opened",                    :default => false
    t.boolean  "deleted",                   :default => false
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  add_index "messages", ["received_messageable_id", "sender_id"], :name => "inbox_idx"

  create_table "objectives", :force => true do |t|
    t.text     "objective"
    t.string   "interest_area_id"
    t.string   "job_type_id"
    t.string   "salary_range_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "resume_id"
  end

  create_table "personal_data", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "school"
    t.string   "area_of_study"
    t.string   "email"
    t.string   "phone"
    t.string   "photo"
    t.string   "video"
    t.text     "about_me"
    t.text     "experience"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.boolean  "register"
  end

  create_table "post3s", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "privacies", :primary_key => "user_id", :force => true do |t|
    t.boolean  "privacy"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "privacy_resumes", :force => true do |t|
    t.integer  "user_id"
    t.integer  "resume_id"
    t.boolean  "privacy"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "resume_job_data", :force => true do |t|
    t.integer  "resume_id"
    t.text     "objective"
    t.string   "area_of_interest"
    t.string   "job_type"
    t.decimal  "salary",           :precision => 10, :scale => 0
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

  create_table "resume_personal_data", :force => true do |t|
    t.integer  "resume_id"
    t.string   "resume_name"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zip"
    t.string   "phone"
    t.string   "linkedin_profile_path"
    t.string   "facebook_profile_path"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "resumes", :force => true do |t|
    t.integer  "user_id"
    t.integer  "option_no"
    t.string   "file_name"
    t.integer  "resume_type"
    t.text     "data"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "salary_ranges", :force => true do |t|
    t.string   "salary_range"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "search_preferences", :primary_key => "user_id", :force => true do |t|
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "skills", :force => true do |t|
    t.integer  "resume_id"
    t.string   "skill_name"
    t.integer  "skill_years"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "time_zones", :primary_key => "user_id", :force => true do |t|
    t.string   "time_zone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.integer  "role"
    t.string   "first_name"
    t.string   "second_name"
    t.boolean  "policy"
    t.string   "provider"
    t.string   "uid"
    t.string   "username"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "welcomes", :force => true do |t|
    t.string   "name"
    t.integer  "age"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
