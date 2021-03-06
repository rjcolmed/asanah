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

ActiveRecord::Schema.define(version: 20171019225727) do

  create_table "asanas", force: :cascade do |t|
    t.string "english_name"
    t.string "devanagari_name"
    t.string "transliterated_name"
    t.integer "group_id"
    t.index ["group_id"], name: "index_asanas_on_group_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
  end

  create_table "sequence_asanas", force: :cascade do |t|
    t.integer "sequence_id"
    t.integer "asana_id"
    t.index ["asana_id"], name: "index_sequence_asanas_on_asana_id"
    t.index ["sequence_id"], name: "index_sequence_asanas_on_sequence_id"
  end

  create_table "sequences", force: :cascade do |t|
    t.string "name"
    t.text "notes"
    t.integer "user_id"
    t.index ["user_id"], name: "index_sequences_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "email"
    t.string "password_digest"
  end

end
