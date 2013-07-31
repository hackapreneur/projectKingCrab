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

ActiveRecord::Schema.define(:version => 20130731192200) do

  create_table "products", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "user_id"
    t.string   "title"
    t.string   "VIN"
    t.string   "StockNumber"
    t.string   "Make"
    t.string   "Model"
    t.string   "ModelYear"
    t.string   "Trim"
    t.string   "BodyStyle"
    t.string   "Mileage"
    t.string   "EngineDescription"
    t.string   "Cylinders"
    t.string   "FuelType"
    t.string   "Transmission"
    t.string   "Price"
    t.string   "ExteriorColor"
    t.string   "InteriorColor"
    t.string   "OptionText"
    t.string   "Images"
    t.string   "VehicleLink"
    t.string   "NewUsed"
    t.string   "DateSold"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "products", ["user_id"], :name => "index_products_on_user_id"

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
    t.string   "Username"
    t.string   "FirstName"
    t.string   "LastName"
    t.string   "Birthday"
    t.string   "ProfilePhoto"
    t.string   "Address"
    t.string   "Industry"
    t.string   "Phone"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
