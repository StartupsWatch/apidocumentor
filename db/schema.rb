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

ActiveRecord::Schema.define(:version => 20120117091518) do

  create_table "api_types", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "project_id"
    t.string   "name"
  end

  add_index "api_types", ["project_id"], :name => "index_api_types_on_project_id"

  create_table "error_types", :force => true do |t|
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "method_type_id"
    t.integer  "code"
    t.string   "name"
    t.string   "description"
  end

  add_index "error_types", ["method_type_id"], :name => "index_error_types_on_method_type_id"

  create_table "method_types", :force => true do |t|
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "api_type_id"
    t.string   "http_method"
    t.string   "name"
    t.string   "description"
    t.string   "url"
    t.string   "sample_request"
    t.text     "sample_response"
    t.integer  "http_response_code"
  end

  add_index "method_types", ["api_type_id"], :name => "index_method_types_on_api_type_id"

  create_table "parameter_types", :force => true do |t|
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "method_type_id"
    t.string   "name"
    t.string   "param_type"
    t.boolean  "optional"
    t.string   "description"
  end

  add_index "parameter_types", ["method_type_id"], :name => "index_parameter_types_on_method_type_id"

  create_table "projects", :force => true do |t|
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "slug"
    t.string   "name"
    t.string   "description"
  end

  add_index "projects", ["slug"], :name => "index_projects_on_slug", :unique => true

end
