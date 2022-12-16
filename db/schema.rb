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

ActiveRecord::Schema[7.0].define(version: 2022_12_13_194902) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exch_assets", force: :cascade do |t|
    t.bigint "exchange_id"
    t.string "symbol"
    t.string "descr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exchange_id"], name: "index_exch_assets_on_exchange_id"
  end

  create_table "exchanges", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "followed_assets", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "exch_asset_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exch_asset_id"], name: "index_followed_assets_on_exch_asset_id"
    t.index ["user_id"], name: "index_followed_assets_on_user_id"
  end

  create_table "synth_legs", force: :cascade do |t|
    t.bigint "synthetic_asset_id"
    t.bigint "exch_asset_id"
    t.float "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exch_asset_id"], name: "index_synth_legs_on_exch_asset_id"
    t.index ["synthetic_asset_id"], name: "index_synth_legs_on_synthetic_asset_id"
  end

  create_table "synthetic_assets", force: :cascade do |t|
    t.bigint "user_id"
    t.string "descr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_synthetic_assets_on_user_id"
  end

  create_table "trades", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "exch_asset_id"
    t.float "price"
    t.float "qty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exch_asset_id"], name: "index_trades_on_exch_asset_id"
    t.index ["user_id"], name: "index_trades_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
