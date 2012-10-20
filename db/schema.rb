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

ActiveRecord::Schema.define(:version => 20121019190857) do

  create_table "ar_3ds", :force => true do |t|
    t.integer  "ar_object_id"
    t.string   "geometry"
    t.boolean  "use_texture"
    t.integer  "texture_id"
    t.boolean  "use_shader"
    t.string   "vertexshader"
    t.string   "fragmentshader"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "ar_3ds", ["ar_object_id"], :name => "index_ar_3ds_on_ar_object_id"

  create_table "ar_objects", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.float    "pos_x"
    t.float    "pos_y"
    t.float    "pos_z"
    t.float    "size_x"
    t.float    "size_y"
    t.float    "size_z"
    t.float    "rot_x"
    t.float    "rot_y"
    t.float    "rot_z"
    t.integer  "marker_id"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "ar_objects", ["marker_id"], :name => "index_ar_objects_on_marker_id"
  add_index "ar_objects", ["user_id"], :name => "index_ar_objects_on_user_id"

  create_table "gps", :force => true do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "ar_object_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "markers", :force => true do |t|
    t.string   "name"
    t.string   "imagename"
    t.boolean  "public"
    t.integer  "user_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.boolean  "position_dependent"
  end

  add_index "markers", ["user_id", "created_at"], :name => "index_markers_on_user_id_and_created_at"

  create_table "textures", :force => true do |t|
    t.string   "filename"
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
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
