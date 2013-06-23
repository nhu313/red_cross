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

ActiveRecord::Schema.define(:version => 20130623184232) do

  create_table "clients", :force => true do |t|
    t.integer  "family_id"
    t.string   "salutation"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "suffix"
    t.string   "address_line1"
    t.string   "address_line2"
    t.string   "address_line3"
    t.string   "city"
    t.string   "state"
    t.string   "county"
    t.string   "postal_code"
    t.string   "home_phone"
    t.string   "work_phone"
    t.string   "mobile_phone"
    t.date     "date_of_birth"
    t.date     "date_deceased"
    t.boolean  "head_of_house_hold"
    t.integer  "ethnicity_type_id"
    t.integer  "language_id"
    t.integer  "gender_type_id"
    t.integer  "economic_status_type_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "disaster_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dwelling_types", :force => true do |t|
    t.string   "name"
    t.string   "story"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "economic_statuses", :force => true do |t|
    t.string   "type_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ethnicities", :force => true do |t|
    t.string   "type_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "families", :force => true do |t|
    t.integer  "cliend_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "genders", :force => true do |t|
    t.string   "type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "incident_assistances", :force => true do |t|
    t.integer  "incident_id"
    t.integer  "family_id"
    t.string   "unit_floor"
    t.integer  "case_number"
    t.integer  "nbr_adult_receiving_assistance"
    t.integer  "nbr_children_receiving_assistance"
    t.text     "mass_care_service"
    t.text     "health_services"
    t.text     "partner_services"
    t.text     "disaster_services_technology"
    t.text     "addition_info"
    t.boolean  "unserviced"
    t.string   "unserviced_reason"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "incident_clients", :force => true do |t|
    t.integer  "incident_id"
    t.integer  "family_id"
    t.integer  "nine01_case_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "incident_disasters", :force => true do |t|
    t.integer  "incident_id"
    t.integer  "disaster_type_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "incident_responders", :force => true do |t|
    t.integer  "incident_id"
    t.integer  "staff_id"
    t.integer  "dispatcher_id"
    t.date     "dispatched_date"
    t.time     "dispatched_time"
    t.date     "date_on_scene"
    t.time     "time_on_scene"
    t.date     "date_left_scene"
    t.time     "time_left_scene"
    t.boolean  "initial_responder"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "incident_stock_types", :force => true do |t|
    t.integer  "incident_id"
    t.integer  "family_id"
    t.integer  "stock_type_id"
    t.integer  "stock_amount"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "incidents", :force => true do |t|
    t.string     "notification_date"
    t.string     "notification_time"
    t.integer  "notification_agency_id"
    t.integer  "dispatcher_id"
    t.string   "address_line1"
    t.string   "city"
    t.string   "state"
    t.string   "county"
    t.string   "postal_code"
    t.integer  "rc_chapter"
    t.string     "verification_date"
    t.string     "verification_time"
    t.integer  "verification_agency"
    t.text     "memo_verification_info"
    t.string     "incident_date"
    t.string     "incident_time"
    t.integer  "nbr_affected_families"
    t.integer  "nbr_affected_individuals"
    t.text     "events_sequence"
    t.integer  "dwelling_id"
    t.text     "damange_assessment"
    t.string   "injuries_or_death"
    t.integer  "national_incident_id"
    t.string   "trainee_follow_up"
    t.string   "date_follow_up"
    t.string   "trainee_name"
    t.string   "person_following_up"
    t.string   "follow_up_result"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "notifying_agencies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "staffs", :force => true do |t|
    t.string   "salutation"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "suffix"
    t.string   "address_line1"
    t.string   "address_line2"
    t.string   "address_line3"
    t.string   "city"
    t.string   "state"
    t.string   "county"
    t.string   "country"
    t.string   "postal_code"
    t.boolean  "responder"
    t.boolean  "dispatcher"
    t.boolean  "case_worker"
    t.string   "home_phone"
    t.string   "work_phone"
    t.string   "mobile_phone"
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "stock_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
