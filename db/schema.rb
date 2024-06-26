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

ActiveRecord::Schema[7.1].define(version: 2024_01_22_060058) do
  create_table "clinic_informations", force: :cascade do |t|
    t.string "name"
    t.string "postal_code"
    t.string "address"
    t.string "phone_number"
    t.string "prefecture_code"
    t.string "clinic_code"
  end

  create_table "karte_histories", force: :cascade do |t|
    t.string "doctor"
    t.string "karte_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "prescription_additional_comment"
    t.text "clinical_department"
    t.date "prescription_limit_date"
  end

  create_table "karte_prescriptions", force: :cascade do |t|
    t.integer "karte_history_id"
    t.integer "medicine_id"
    t.integer "amount"
    t.string "as_needed"
    t.string "as_needed_comment"
    t.string "comment"
  end

  create_table "karte_treatments", force: :cascade do |t|
    t.integer "treatment_id"
    t.integer "karte_history_id"
    t.index ["treatment_id", "karte_history_id"], name: "index_karte_treatments_on_treatment_id_and_karte_history_id", unique: true
  end

  create_table "kartes", force: :cascade do |t|
    t.string "patient_id"
  end

  create_table "medicine_masters", force: :cascade do |t|
    t.string "name"
    t.string "usage"
    t.string "unit"
  end

  create_table "patient_histories", force: :cascade do |t|
    t.integer "patient_id"
    t.string "name"
    t.string "kana_name"
    t.integer "sex_id"
    t.integer "status_id"
    t.string "insurance_card_number"
    t.string "insured_persons_numer"
    t.string "public_expense_number"
    t.string "public_healthcare_number"
    t.string "coverage_type"
    t.string "address"
    t.string "memo"
    t.integer "insurance_rate"
    t.string "insured_relationship_type"
    t.string "insurance_type"
    t.date "birthdate"
  end

  create_table "patients", force: :cascade do |t|
    t.string "created_by"
    t.datetime "created_at"
  end

  create_table "staff_histories", force: :cascade do |t|
    t.integer "staff_id"
    t.string "name"
  end

  create_table "staffs", force: :cascade do |t|
    t.datetime "created_at"
    t.string "created_by"
  end

  create_table "treatment_masters", force: :cascade do |t|
    t.string "name"
    t.integer "score"
    t.integer "category"
    t.boolean "insurance_cover", default: false
    t.index ["name"], name: "index_treatment_masters_on_name", unique: true
  end

end
