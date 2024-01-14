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

ActiveRecord::Schema[7.0].define(version: 2024_01_14_045844) do
  create_table "karte_histories", primary_key: "karte_history_id", force: :cascade do |t|
    t.string "doctor"
    t.string "karte_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "prescription_additional_comment"
  end

  create_table "karte_treatments", primary_key: ["treatment_id", "karte_history_id"], force: :cascade do |t|
    t.string "treatment_id"
    t.string "karte_history_id"
  end

  create_table "treatment_masters", primary_key: "treatment_id", force: :cascade do |t|
    t.string "name"
    t.integer "score"
  end

end
