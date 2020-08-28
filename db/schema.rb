# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_28_200943) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "crunchbase_acquisitions", force: :cascade do |t|
    t.string "company_permalink"
    t.string "company_name"
    t.string "company_category_code"
    t.string "company_country_code"
    t.string "company_state_code"
    t.string "company_region"
    t.string "company_city"
    t.string "acquirer_permalink"
    t.string "acquirer_name"
    t.string "acquirer_category_code"
    t.string "acquirer_country_code"
    t.string "acquirer_state_code"
    t.string "acquirer_region"
    t.string "acquirer_city"
    t.date "acquired_at"
    t.date "acquired_month"
    t.date "acquired_quarter"
    t.date "acquired_year"
    t.decimal "price_amount"
    t.string "price_currency_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "crunchbase_companies", force: :cascade do |t|
    t.string "permalink"
    t.string "name"
    t.string "category_code"
    t.decimal "funding_total_usd"
    t.string "status"
    t.string "country_code"
    t.string "state_code"
    t.string "region"
    t.string "city"
    t.string "funding_rounds"
    t.date "founded_at"
    t.string "founded_month"
    t.string "founded_quarter"
    t.date "founded_year"
    t.date "first_funding_at"
    t.date "last_funding_at"
    t.date "last_milestone_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "crunchbase_investments", force: :cascade do |t|
    t.string "company_permalink"
    t.string "company_name"
    t.string "company_category_code"
    t.string "company_country_code"
    t.string "company_state_code"
    t.string "company_region"
    t.string "company_city"
    t.string "investor_permalink"
    t.string "investor_name"
    t.string "investor_category_code"
    t.string "investor_country_code"
    t.string "investor_state_code"
    t.string "investor_region"
    t.string "investor_city"
    t.string "funding_round_type"
    t.date "funded_at"
    t.date "funded_year"
    t.date "funded_month"
    t.date "funded_quarter"
    t.decimal "raised_amount_usd"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "crunchbase_rounds", force: :cascade do |t|
    t.string "company_permalink"
    t.string "company_name"
    t.string "company_category_code"
    t.string "company_country_code"
    t.string "company_state_code"
    t.string "company_region"
    t.string "company_city"
    t.string "funding_round_type"
    t.date "funded_at"
    t.date "funded_year"
    t.date "funded_month"
    t.date "funded_quarter"
    t.decimal "raised_amount_usd"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
