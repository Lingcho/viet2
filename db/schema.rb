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

ActiveRecord::Schema.define(version: 2019_11_07_192340) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "prixHT"
  end

  create_table "boissons", force: :cascade do |t|
    t.string "nom"
    t.decimal "prix"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "commandes", force: :cascade do |t|
    t.integer "num"
    t.boolean "statut", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "table_id"
    t.bigint "boisson_id"
    t.bigint "article_id"
    t.index ["article_id"], name: "index_commandes_on_article_id"
    t.index ["boisson_id"], name: "index_commandes_on_boisson_id"
    t.index ["table_id"], name: "index_commandes_on_table_id"
  end

  create_table "tables", force: :cascade do |t|
    t.string "numeros"
    t.integer "couverts"
    t.boolean "reglement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "commandes", "articles"
  add_foreign_key "commandes", "boissons"
  add_foreign_key "commandes", "tables"
end
