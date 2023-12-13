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

ActiveRecord::Schema[7.1].define(version: 2020_09_21_131652) do
  create_table "form_attributes", force: :cascade do |t|
    t.string "label"
    t.string "field_type"
    t.boolean "is_required", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "form_attributes_forms", force: :cascade do |t|
    t.integer "form_id", null: false
    t.integer "form_attribute_id", null: false
    t.index ["form_attribute_id"], name: "index_form_attributes_forms_on_form_attribute_id"
    t.index ["form_id"], name: "index_form_attributes_forms_on_form_id"
  end

  create_table "form_submissions", force: :cascade do |t|
    t.integer "form_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_id"], name: "index_form_submissions_on_form_id"
    t.index ["user_id"], name: "index_form_submissions_on_user_id"
  end

  create_table "form_values", force: :cascade do |t|
    t.integer "form_attribute_id", null: false
    t.string "value"
    t.integer "form_submission_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_attribute_id"], name: "index_form_values_on_form_attribute_id"
    t.index ["form_submission_id"], name: "index_form_values_on_form_submission_id"
  end

  create_table "forms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "form_attributes_forms", "form_attributes"
  add_foreign_key "form_attributes_forms", "forms"
  add_foreign_key "form_submissions", "forms"
  add_foreign_key "form_submissions", "users"
  add_foreign_key "form_values", "form_attributes"
  add_foreign_key "form_values", "form_submissions"
end
