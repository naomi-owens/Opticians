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

ActiveRecord::Schema.define(:version => 20120228171836) do

  create_table "appointments", :force => true do |t|
    t.time     "starttime"
    t.time     "endtime"
    t.date     "date"
    t.string   "appointmenttype"
    t.string   "status"
    t.integer  "patient_id"
    t.integer  "optician_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "opticians", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "roomnumber"
    t.string   "opticianregistrationnumber"
    t.string   "phonenumber"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", :force => true do |t|
    t.string   "title"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "address"
    t.date     "dob"
    t.string   "mobilenumber"
    t.string   "homenumber"
    t.string   "worknumber"
    t.text     "memo"
    t.string   "gender"
    t.date     "lastvisit"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "password"
  end

end
