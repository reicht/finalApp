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

ActiveRecord::Schema.define(version: 20160512135534) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "breeds", force: :cascade do |t|
    t.string   "name",         null: false
    t.string   "size",         null: false
    t.integer  "intro_year",   null: false
    t.integer  "akc_rank"
    t.integer  "energy_level", null: false
    t.integer  "group_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "breeds", ["group_id"], name: "index_breeds_on_group_id", using: :btree

  create_table "btraits", force: :cascade do |t|
    t.integer  "breed_id"
    t.integer  "trait_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "btraits", ["breed_id"], name: "index_btraits_on_breed_id", using: :btree
  add_index "btraits", ["trait_id"], name: "index_btraits_on_trait_id", using: :btree

  create_table "dbreeds", force: :cascade do |t|
    t.integer  "dog_id"
    t.integer  "breed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "dbreeds", ["breed_id"], name: "index_dbreeds_on_breed_id", using: :btree
  add_index "dbreeds", ["dog_id"], name: "index_dbreeds_on_dog_id", using: :btree

  create_table "dog_pics", force: :cascade do |t|
    t.integer  "dog_id"
    t.string   "size",       null: false
    t.string   "link",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "dog_pics", ["dog_id"], name: "index_dog_pics_on_dog_id", using: :btree

  create_table "dogs", force: :cascade do |t|
    t.string   "pf_id",           null: false
    t.string   "shelter_id",      null: false
    t.string   "name",            null: false
    t.string   "bio",             null: false
    t.string   "age",             null: false
    t.string   "sex",             null: false
    t.string   "size",            null: false
    t.string   "mix",             null: false
    t.datetime "last_update",     null: false
    t.integer  "organization_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "dogs", ["organization_id"], name: "index_dogs_on_organization_id", using: :btree

  create_table "dspecs", force: :cascade do |t|
    t.integer  "dog_id"
    t.integer  "spec_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "dspecs", ["dog_id"], name: "index_dspecs_on_dog_id", using: :btree
  add_index "dspecs", ["spec_id"], name: "index_dspecs_on_spec_id", using: :btree

  create_table "groups", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "description", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "site_url"
    t.string   "description"
    t.integer  "dogs_count"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "specs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "traits", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "email",                          null: false
    t.string   "encrypted_password", limit: 128, null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

  create_table "watches", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "organization_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "watches", ["organization_id"], name: "index_watches_on_organization_id", using: :btree
  add_index "watches", ["user_id"], name: "index_watches_on_user_id", using: :btree

  add_foreign_key "breeds", "groups"
  add_foreign_key "btraits", "breeds"
  add_foreign_key "btraits", "traits"
  add_foreign_key "dbreeds", "breeds"
  add_foreign_key "dbreeds", "dogs"
  add_foreign_key "dog_pics", "dogs"
  add_foreign_key "dogs", "organizations"
  add_foreign_key "dspecs", "dogs"
  add_foreign_key "dspecs", "specs"
  add_foreign_key "watches", "organizations"
  add_foreign_key "watches", "users"
end
