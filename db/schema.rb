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

ActiveRecord::Schema.define(version: 20130730230946) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "homes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "location_properties", force: true do |t|
    t.integer  "neighborhood_id"
    t.string   "wish_id_integer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "location_wishes", force: true do |t|
    t.integer  "neighborhood_id"
    t.string   "wish_id_integer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.integer  "neighborhood_id"
    t.string   "wish_id_integer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matches", force: true do |t|
    t.integer  "property_id"
    t.integer  "wish_id"
    t.float    "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "neighborhoods", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plocations", force: true do |t|
    t.integer  "neighborhood_id"
    t.integer  "property_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "properties", force: true do |t|
    t.integer  "user_id"
    t.integer  "school_id"
    t.string   "neighborhood_id"
    t.string   "subneighborhood_id"
    t.string   "property_type"
    t.integer  "bedrooms"
    t.integer  "bathrooms"
    t.integer  "total_floor_area"
    t.integer  "lot_size"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address_unit_number_1"
    t.string   "address_street_number_1"
    t.string   "address_street_name_1"
    t.string   "address_street_type_1"
    t.string   "address_postal_code_1"
    t.string   "address_city_1"
    t.string   "address_province_1"
    t.string   "address_country_1"
    t.string   "description"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "pschoolcatchments", force: true do |t|
    t.integer  "property_id"
    t.integer  "school_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", force: true do |t|
    t.string   "name"
    t.string   "school_type"
    t.float    "score"
    t.integer  "rank"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "subtype"
  end

  create_table "subneighborhoods", force: true do |t|
    t.string   "description"
    t.integer  "neighborhood_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "test123s", force: true do |t|
    t.string   "a"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "wishes", force: true do |t|
    t.integer  "user_id"
    t.integer  "school_id"
    t.string   "description"
    t.string   "neighborhood"
    t.string   "sub_neighborhood"
    t.string   "property_type"
    t.integer  "minimum_bedrooms"
    t.integer  "minimum_bathrooms"
    t.integer  "minimum_total_floor_area"
    t.integer  "minimum_lot_size"
    t.integer  "maximum_price"
    t.string   "work_address_unit_number_1"
    t.string   "work_address_street_number_1"
    t.string   "work_address_street_name_1"
    t.string   "work_address_street_type_1"
    t.string   "work_address_postal_code_1"
    t.string   "work_address_city_1"
    t.string   "work_address_province_1"
    t.string   "work_address_country_1"
    t.string   "work_address_preferred_transportation_method_1"
    t.integer  "max_duration_to_work_1"
    t.string   "work_address_unit_number_2"
    t.string   "work_address_street_number_2"
    t.string   "work_address_street_name_2"
    t.string   "work_address_street_type_2"
    t.string   "work_address_postal_code_2"
    t.string   "work_address_city_2"
    t.string   "work_address_province_2"
    t.string   "work_address_country_2"
    t.integer  "work_address_2"
    t.string   "work_address_preferred_transportation_method_2"
    t.integer  "max_duration_to_work_2"
    t.boolean  "flexible_neighborhood"
    t.boolean  "flexible_property_type"
    t.boolean  "flexible_minimum_bedrooms"
    t.boolean  "flexible_minimum_bathrooms"
    t.boolean  "flexible_minimum_total_floor_area"
    t.boolean  "flexible_minimum_lot_size"
    t.boolean  "flexible_maximum_price"
    t.boolean  "flexible_school"
    t.boolean  "flexible_work_address"
    t.float    "weight_neighborhood"
    t.float    "weight_property_type"
    t.float    "weight_minimum_bedrooms"
    t.float    "weight_minimum_bathrooms"
    t.float    "weight_minimum_total_floor_area"
    t.float    "weight_minimum_lot_size"
    t.float    "weight_maximum_price"
    t.float    "weight_school"
    t.float    "weight_work_address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "max_distance_to_work_address_1"
  end

  create_table "wlocations", force: true do |t|
    t.integer  "neighborhood_id"
    t.integer  "wish_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wschoolcatchments", force: true do |t|
    t.integer  "wish_id"
    t.integer  "school_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wschoolcathments", force: true do |t|
    t.integer  "wish_id"
    t.integer  "school_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wsublocations", force: true do |t|
    t.integer  "wish_id"
    t.integer  "subneighborhood_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
