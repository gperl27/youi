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

ActiveRecord::Schema.define(version: 20160922000950) do

  create_table "h1_properties", force: :cascade do |t|
    t.integer  "h1_id"
    t.integer  "fontsize"
    t.integer  "letterspacing"
    t.string   "texttransformation"
    t.integer  "fontweight"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["h1_id"], name: "index_h1_properties_on_h1_id"
  end

  create_table "h1s", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "h2_properties", force: :cascade do |t|
    t.integer  "fontsize"
    t.integer  "letterspacing"
    t.string   "texttransformation"
    t.integer  "wordspacing"
    t.integer  "fontweight"
    t.integer  "h2_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["h2_id"], name: "index_h2_properties_on_h2_id"
  end

  create_table "h2s", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
