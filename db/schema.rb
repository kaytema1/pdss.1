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

ActiveRecord::Schema.define(version: 20170522010244) do

  create_table "conditions", force: true do |t|
    t.string   "name"
    t.string   "icd_code"
    t.integer  "patient_visit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "conditions", ["patient_visit_id"], name: "index_conditions_on_patient_visit_id"

  create_table "conditions_patients", force: true do |t|
    t.integer "condition_id"
    t.integer "patient_id"
  end

  add_index "conditions_patients", ["condition_id"], name: "index_conditions_patients_on_condition_id"
  add_index "conditions_patients", ["patient_id"], name: "index_conditions_patients_on_patient_id"

  create_table "diagnoses", force: true do |t|
    t.string   "diagnosis"
    t.integer  "patient_visit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "diagnoses", ["patient_visit_id"], name: "index_diagnoses_on_patient_visit_id"

  create_table "diagnoses_patients", force: true do |t|
    t.integer "diagnosis_id"
    t.integer "patient_id"
  end

  add_index "diagnoses_patients", ["diagnosis_id"], name: "index_diagnoses_patients_on_diagnosis_id"
  add_index "diagnoses_patients", ["patient_id"], name: "index_diagnoses_patients_on_patient_id"

  create_table "patient_visits", force: true do |t|
    t.integer  "patient_id"
    t.datetime "visit_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "patient_visits", ["patient_id"], name: "index_patient_visits_on_patient_id"

  create_table "patients", force: true do |t|
    t.string   "folder_number"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "gender"
    t.text     "address"
    t.string   "doctors_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients_questionnaires", force: true do |t|
    t.integer "patient_id"
    t.integer "questionnaire_id"
  end

  add_index "patients_questionnaires", ["patient_id"], name: "index_patients_questionnaires_on_patient_id"
  add_index "patients_questionnaires", ["questionnaire_id"], name: "index_patients_questionnaires_on_questionnaire_id"

  create_table "prescription_items", force: true do |t|
    t.string   "drug_name"
    t.integer  "quantity"
    t.decimal  "price"
    t.string   "drug_form"
    t.integer  "prescription_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prescription_items", ["prescription_id"], name: "index_prescription_items_on_prescription_id"

  create_table "prescriptions", force: true do |t|
    t.integer  "patient_visit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prescriptions", ["patient_visit_id"], name: "index_prescriptions_on_patient_visit_id"

  create_table "questionnaires", force: true do |t|
    t.text     "question"
    t.string   "answer"
    t.text     "comment"
    t.integer  "patient_visit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questionnaires", ["patient_visit_id"], name: "index_questionnaires_on_patient_visit_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "staff_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
