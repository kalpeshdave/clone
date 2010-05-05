# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100429130918) do

  create_table "admins", :force => true do |t|
    t.string   "login"
    t.string   "crypted_password",  :null => false
    t.string   "password_salt",     :null => false
    t.string   "persistence_token", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blogcatagories", :force => true do |t|
    t.string "name"
  end

  create_table "blogs", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "blogcatagory_id"
  end

  create_table "comments", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "url"
    t.text     "comment"
    t.integer  "blog_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "experiences", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", :force => true do |t|
    t.integer  "work_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "work_data_file_name"
    t.string   "work_data_content_type"
    t.integer  "work_data_file_size"
    t.datetime "work_data_updated_at"
  end

  add_index "images", ["work_id"], :name => "index_images_on_work_id"

  create_table "interconnects", :force => true do |t|
    t.integer "person_id"
    t.integer "work_id"
  end

  create_table "interservices", :force => true do |t|
    t.integer "person_id"
    t.integer "service_id"
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "markets", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.string   "designation"
    t.string   "title"
    t.text     "description"
    t.integer  "type_id"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "person_photo_file_name"
    t.string   "person_photo_content_type"
    t.integer  "person_photo_file_size"
  end

  create_table "services", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "person_id"
    t.integer  "work_id"
    t.integer  "images_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "services_photo_file_name"
    t.string   "services_photo_content_type"
    t.integer  "services_photo_file_size"
  end

  create_table "types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "works", :force => true do |t|
    t.string   "project_name"
    t.integer  "market_id"
    t.integer  "experience_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "service_id"
  end

end
