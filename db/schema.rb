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

ActiveRecord::Schema[7.2].define(version: 2025_07_10_111947) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_budget_categories", force: :cascade do |t|
    t.string "name"
    t.integer "spending_limit_percentage"
    t.integer "budget_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_phases", force: :cascade do |t|
    t.string "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "budget_categories", force: :cascade do |t|
    t.string "name"
    t.integer "spending_limit_percentage"
    t.bigint "budget_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["budget_id"], name: "index_budget_categories_on_budget_id"
  end

  create_table "budgets", force: :cascade do |t|
    t.string "name"
    t.decimal "total_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "impact_metrics", force: :cascade do |t|
    t.bigint "project_id", null: false
    t.integer "estimated_beneficiaries"
    t.integer "timeline_months"
    t.integer "sustainability_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_impact_metrics_on_project_id"
  end

  create_table "phases", force: :cascade do |t|
    t.string "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.text "voting_rules"
    t.text "eligibility_rules"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "budget_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["budget_category_id"], name: "index_projects_on_budget_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "votes", force: :cascade do |t|
    t.integer "user_id"
    t.bigint "project_id", null: false
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_votes_on_project_id"
  end

  add_foreign_key "budget_categories", "budgets"
  add_foreign_key "impact_metrics", "projects"
  add_foreign_key "projects", "budget_categories"
  add_foreign_key "votes", "projects"
end
