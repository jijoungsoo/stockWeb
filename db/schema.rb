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

ActiveRecord::Schema.define(version: 20160203120144) do

  create_table "market_stocks", id: false, force: :cascade do |t|
    t.string   "market_code_id", limit: 2
    t.string   "stock_code_id",  limit: 9
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "markets", id: false, force: :cascade do |t|
    t.string   "market_code", limit: 2
    t.string   "market_name", limit: 45
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "markets", ["market_code"], name: "index_markets_on_market_code", unique: true, using: :btree

  create_table "opt10081s", force: :cascade do |t|
    t.datetime "stock_date"
    t.string   "stock_code",     limit: 9
    t.integer  "current_price",  limit: 4
    t.integer  "trade_quantity", limit: 4
    t.integer  "trade_price",    limit: 4
    t.integer  "start_price",    limit: 4
    t.integer  "high_price",     limit: 4
    t.integer  "low_price",      limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "qpw00004s", id: false, force: :cascade do |t|
    t.datetime "stock_date"
    t.string   "account_name",                      limit: 12
    t.string   "place_name",                        limit: 12
    t.integer  "deposit",                           limit: 4
    t.integer  "twodays_after_deposit",             limit: 4
    t.integer  "stock_evaluation",                  limit: 4
    t.integer  "stock_balance_evaluation",          limit: 4
    t.integer  "total_amount_of_purchase",          limit: 4
    t.integer  "estimation_deposit",                limit: 4
    t.integer  "stock_collacteral_loan",            limit: 4
    t.integer  "today_investment_money",            limit: 4
    t.integer  "this_month_investment_money",       limit: 4
    t.integer  "accumulative_investment_money",     limit: 4
    t.integer  "today_profit_and_loss",             limit: 4
    t.integer  "this_month_profit_and_loss",        limit: 4
    t.integer  "accumulative_profit_and_loss",      limit: 4
    t.integer  "today_profit_and_loss_rate",        limit: 4
    t.integer  "this_month_profit_and_loss_rate",   limit: 4
    t.integer  "accumulative_profit_and_loss_rate", limit: 4
    t.integer  "print_count",                       limit: 4
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  create_table "stocks", id: false, force: :cascade do |t|
    t.string   "stock_code",      limit: 9
    t.string   "stock_name",      limit: 45
    t.datetime "stock_open_date"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "stocks", ["stock_code"], name: "index_stocks_on_stock_code", unique: true, using: :btree

  create_table "theme_stocks", id: false, force: :cascade do |t|
    t.string   "theme_code_id",     limit: 3
    t.string   "stock_code_id",     limit: 9
    t.string   "org_stock_code_id", limit: 9
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "themes", id: false, force: :cascade do |t|
    t.string   "theme_code", limit: 255
    t.string   "theme_name", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
