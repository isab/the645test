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

ActiveRecord::Schema.define(version: 2020_08_26_161839) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "jobs", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.date "start_date"
    t.date "end_date"
    t.date "organization_exit_date"
    t.decimal "price"
    t.boolean "exit"
    t.string "top_syndicate"
    t.integer "person_id"
    t.decimal "funding_amount"
    t.integer "candidate_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "linkedin_url"
    t.string "twitter_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "startups", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "permalink"
    t.string "industry"
    t.decimal "funding"
    t.integer "founded_year"
    t.date "last_funding_date"
    t.string "website"
    t.string "location"
    t.integer "founder_ids", default: [], array: true
    t.date "on_crunchbase_since"
    t.string "investors", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
