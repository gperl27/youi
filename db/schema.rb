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

ActiveRecord::Schema.define(version: 20160927152748) do

  create_table "button_properties", force: :cascade do |t|
    t.integer  "button_id"
    t.integer  "border"
    t.integer  "borderradius"
    t.integer  "padding"
    t.integer  "fontsize"
    t.integer  "letterspacing"
    t.integer  "fontweight"
    t.integer  "color_hue"
    t.integer  "color_saturation"
    t.integer  "color_luminosity"
    t.integer  "bg_hue"
    t.integer  "bg_saturation"
    t.integer  "bg_luminosity"
    t.integer  "border_hue"
    t.integer  "border_saturation"
    t.integer  "border_luminosity"
    t.string   "texttransformation"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "border_style"
    t.index ["button_id"], name: "index_button_properties_on_button_id"
  end

  create_table "buttons", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  create_table "h3_properties", force: :cascade do |t|
    t.integer  "h3_id"
    t.integer  "fontsize"
    t.integer  "letterspacing"
    t.string   "texttransformation"
    t.integer  "wordspacing"
    t.integer  "fontweight"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["h3_id"], name: "index_h3_properties_on_h3_id"
  end

  create_table "h3s", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "h4_properties", force: :cascade do |t|
    t.integer  "h4_id"
    t.integer  "fontsize"
    t.integer  "letterspacing"
    t.string   "texttransformation"
    t.integer  "wordspacing"
    t.integer  "fontweight"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["h4_id"], name: "index_h4_properties_on_h4_id"
  end

  create_table "h4s", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "h5_properties", force: :cascade do |t|
    t.integer  "h5_id"
    t.integer  "fontsize"
    t.integer  "letterspacing"
    t.string   "texttransformation"
    t.integer  "wordspacing"
    t.integer  "fontweight"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["h5_id"], name: "index_h5_properties_on_h5_id"
  end

  create_table "h5s", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "image_properties", force: :cascade do |t|
    t.integer  "image_id"
    t.integer  "height"
    t.integer  "width"
    t.integer  "border"
    t.integer  "border_hue"
    t.integer  "border_saturation"
    t.integer  "border_luminosity"
    t.integer  "borderradius"
    t.integer  "padding"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["image_id"], name: "index_image_properties_on_image_id"
  end

  create_table "images", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paragraph_properties", force: :cascade do |t|
    t.integer  "paragraph_id"
    t.string   "textalign"
    t.integer  "fontsize"
    t.integer  "wordspacing"
    t.integer  "padding"
    t.integer  "indent"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["paragraph_id"], name: "index_paragraph_properties_on_paragraph_id"
  end

  create_table "paragraphs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "section_properties", force: :cascade do |t|
    t.integer  "section_id"
    t.integer  "color_hue"
    t.integer  "color_saturation"
    t.integer  "color_luminosity"
    t.integer  "bg_hue"
    t.integer  "bg_saturation"
    t.integer  "bg_luminosity"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["section_id"], name: "index_section_properties_on_section_id"
  end

  create_table "sections", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
