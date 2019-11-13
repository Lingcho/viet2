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

ActiveRecord::Schema.define(version: 2019_11_10_172925) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "code"
    t.string "designation"
    t.integer "prix"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "commande_id"
    t.index ["commande_id"], name: "index_articles_on_commande_id"
  end

  create_table "articles_commandes", id: false, force: :cascade do |t|
    t.bigint "article_id", null: false
    t.bigint "commande_id", null: false
    t.index ["article_id", "commande_id"], name: "index_articles_commandes_on_article_id_and_commande_id"
    t.index ["commande_id", "article_id"], name: "index_articles_commandes_on_commande_id_and_article_id"
  end

  create_table "commandes", force: :cascade do |t|
    t.string "numeros"
    t.string "table"
    t.boolean "statut"
    t.boolean "payer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "couverts"
  end

  add_foreign_key "articles", "commandes"
end
