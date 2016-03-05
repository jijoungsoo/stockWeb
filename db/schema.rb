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

ActiveRecord::Schema.define(version: 20160305054245) do

  create_table "balances", force: :cascade, comment: "잔고" do |t|
    t.datetime "reg_time",                                                                            comment: "기록시간"
    t.string   "account_number",                      limit: 10,                                      comment: "계좌번호"
    t.string   "stock_code",                          limit: 9,                                       comment: "종목코드, 업종코드"
    t.integer  "current_price",                       limit: 4,                                       comment: "현재가, 체결가, 실시간종가"
    t.integer  "possession_quantity",                 limit: 4,                                       comment: "보유수량"
    t.integer  "purchase_price",                      limit: 4,                                       comment: "매입단가"
    t.integer  "total_amount_of_purchase",            limit: 4,                                       comment: "총매입가"
    t.integer  "order_possible_quantity",             limit: 4,                                       comment: "주문가능수량"
    t.integer  "today_net_buy_quantity",              limit: 4,                                       comment: "당일순매수량"
    t.integer  "order_type",                          limit: 4,                                       comment: "매도 / 매수구분"
    t.integer  "today_sell_profit_and_loss",          limit: 4,                                       comment: "당일 총 매도 손익"
    t.integer  "deposit",                             limit: 4,                                       comment: "예수금"
    t.integer  "offered_price",                       limit: 4,                                       comment: "(최우선)매도호가"
    t.integer  "bid_price",                           limit: 4,                                       comment: "(최우선)매수호가"
    t.integer  "yesterday_current_price",             limit: 4,                                       comment: "기준가(어제종가)"
    t.decimal  "not_commission_profit_and_loss_rate",            precision: 5, scale: 2,              comment: "손익율"
    t.string   "stock_option_trade_unit",             limit: 10,                                      comment: "주식옵션거래단위"
    t.datetime "created_at",                                                             null: false
    t.datetime "updated_at",                                                             null: false
  end

  add_index "balances", ["reg_time"], name: "index_balances_on_reg_time", using: :btree

  create_table "branch_code_names", id: false, force: :cascade, comment: "회원사코드표" do |t|
    t.string   "branch_code", limit: 3,               comment: "회원사코드"
    t.string   "branch_name", limit: 30,              comment: "이름"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "branch_code_names", ["branch_code"], name: "index_branch_code_names_on_branch_code", unique: true, using: :btree

  create_table "condition_names", id: false, force: :cascade, comment: "조건검색" do |t|
    t.string   "condition_name", limit: 50,              comment: "조건검색명"
    t.integer  "nIndex",         limit: 4,               comment: "인덱스번호"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "domains", force: :cascade, comment: "도메인정의서" do |t|
    t.string   "name",            limit: 30,               comment: "도메인명"
    t.string   "description",     limit: 100,              comment: "도메인설명"
    t.string   "english_keyword", limit: 100,              comment: "영어키워드"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

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

  create_table "opt10001s", id: false, force: :cascade, comment: "주식기본정보요청" do |t|
    t.datetime "stock_date",                                                                     comment: "일자"
    t.string   "stock_code",                    limit: 9,                                        comment: "종목코드"
    t.string   "stock_name",                    limit: 50,                                       comment: "종목명"
    t.integer  "settling_account_month",        limit: 4,                                        comment: "결산월"
    t.integer  "face_value",                    limit: 4,                                        comment: "액면가"
    t.integer  "capital",                       limit: 4,                                        comment: "자본금"
    t.integer  "stock_count",                   limit: 4,                                        comment: "상장주식"
    t.decimal  "credit_rate",                               precision: 5, scale: 2,              comment: "신용비율"
    t.integer  "year_high_price",               limit: 4,                                        comment: "연중최고"
    t.integer  "year_low_price",                limit: 4,                                        comment: "연중최저"
    t.integer  "total_market_price",            limit: 4,                                        comment: "시가총액"
    t.decimal  "total_market_price_rate",                   precision: 5, scale: 2,              comment: "시가총액비중"
    t.decimal  "foreigner_exhaustion_rate",                 precision: 5, scale: 2,              comment: "외인소진률"
    t.integer  "substitute_price",              limit: 4,                                        comment: "대용가"
    t.decimal  "per",                                       precision: 5, scale: 2,              comment: "주가수익률"
    t.decimal  "eps",                                       precision: 5, scale: 2,              comment: "주당순이익"
    t.decimal  "roe",                                       precision: 5, scale: 2,              comment: "자기자본이익률"
    t.decimal  "pbr",                                       precision: 5, scale: 2,              comment: "주가순자산비율"
    t.decimal  "ev",                                        precision: 5, scale: 2,              comment: "이자비용,법인세비용, 감가상각비용을 공제하기 전의 이익"
    t.decimal  "bps",                                       precision: 5, scale: 2,              comment: "주당순자산가치"
    t.integer  "sales",                         limit: 4,                                        comment: "매출액"
    t.integer  "business_profits",              limit: 4,                                        comment: "영업이익"
    t.integer  "d250_high_price",               limit: 4,                                        comment: "D250최고"
    t.integer  "d250_low_price",                limit: 4,                                        comment: "D250최저"
    t.integer  "start_price",                   limit: 4,                                        comment: "시가"
    t.integer  "high_price",                    limit: 4,                                        comment: "고가"
    t.integer  "low_price",                     limit: 4,                                        comment: "저가"
    t.integer  "upper_price_limit",             limit: 4,                                        comment: "상한가"
    t.integer  "lower_price_limit",             limit: 4,                                        comment: "하한가"
    t.integer  "yesterday_current_price",       limit: 4,                                        comment: "기준가"
    t.string   "expectation_contract_price",    limit: 255,                                      comment: "예상체결가"
    t.integer  "expectation_contract_quantity", limit: 4,                                        comment: "예상체결수량"
    t.datetime "d250_high_date",                                                                 comment: "D250최고가일"
    t.decimal  "d250_high_rate",                            precision: 5, scale: 2,              comment: "D250최고가대비율"
    t.datetime "d250_low_date",                                                                  comment: "D250최저가일"
    t.decimal  "d250_low_rate",                             precision: 5, scale: 2,              comment: "D250최저가대비율"
    t.integer  "current_price",                 limit: 4,                                        comment: "현재가"
    t.integer  "contrast_symbol",               limit: 4,                                        comment: "대비기호"
    t.integer  "contrast_yesterday",            limit: 4,                                        comment: "전일대비"
    t.decimal  "fluctuation_rate",                          precision: 5, scale: 2,              comment: "등락율"
    t.integer  "trade_quantity",                limit: 4,                                        comment: "거래량"
    t.decimal  "trade_contrast",                            precision: 5, scale: 2,              comment: "거래대비"
    t.integer  "face_value_unit",               limit: 4,                                        comment: "액면가단위"
    t.datetime "created_at",                                                        null: false
    t.datetime "updated_at",                                                        null: false
  end

  add_index "opt10001s", ["stock_date", "stock_code"], name: "index_opt10001s_on_stock_date_and_stock_code", unique: true, using: :btree

  create_table "opt10014s", id: false, force: :cascade, comment: "공매도추이요청" do |t|
    t.datetime "stock_date",                                                                 comment: "일자"
    t.string   "stock_code",                  limit: 9,                                      comment: "종목코드"
    t.integer  "current_price",               limit: 4,                                      comment: "종가"
    t.integer  "contrast_yesterday_symbol",   limit: 4,                                      comment: "전일대비기호"
    t.integer  "contrast_yesterday",          limit: 4,                                      comment: "전일대비"
    t.decimal  "fluctuation_rate",                      precision: 5, scale: 2,              comment: "등락율"
    t.integer  "trade_quantity",              limit: 4,                                      comment: "거래량"
    t.integer  "short_selling_quantity",      limit: 4,                                      comment: "공매도량"
    t.decimal  "trade_rate",                            precision: 5, scale: 2,              comment: "매매비중"
    t.integer  "short_selling_trade_price",   limit: 4,                                      comment: "공매도거래대금"
    t.integer  "short_selling_average_price", limit: 4,                                      comment: "공매도평균가"
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
  end

  add_index "opt10014s", ["stock_date", "stock_code"], name: "index_opt10014s_on_stock_date_and_stock_code", unique: true, using: :btree

  create_table "opt10015s", id: false, force: :cascade, comment: "일별거래상세요청" do |t|
    t.datetime "stock_date",                                                                  comment: "일자"
    t.string   "stock_code",                   limit: 9,                                      comment: "종목코드"
    t.integer  "current_price",                limit: 4,                                      comment: "현재가(종가)"
    t.integer  "contrast_yesterday_symbol",    limit: 4,                                      comment: "전일대비기호"
    t.integer  "contrast_yesterday",           limit: 4,                                      comment: "전일대비"
    t.decimal  "fluctuation_rate",                       precision: 5, scale: 2,              comment: "등락율"
    t.integer  "trade_quantity",               limit: 4,                                      comment: "거래량"
    t.integer  "trade_price",                  limit: 4,                                      comment: "거래대금"
    t.integer  "before_market_trade_quantity", limit: 4,                                      comment: "장전거래량"
    t.decimal  "before_market_trade_rate",               precision: 5, scale: 2,              comment: "장전거래비중"
    t.integer  "market_trade_quantity",        limit: 4,                                      comment: "장중거래량"
    t.decimal  "market_trade_rate",                      precision: 5, scale: 2,              comment: "장중거래비중"
    t.integer  "after_market_trade_quantity",  limit: 4,                                      comment: "장후거래량"
    t.integer  "after_market_trade_rate",      limit: 4,                                      comment: "장후거래비중"
    t.integer  "sum3",                         limit: 4,                                      comment: "합계3"
    t.integer  "between_trade_quantity",       limit: 4,                                      comment: "기간중거래량"
    t.datetime "created_at",                                                     null: false
    t.datetime "updated_at",                                                     null: false
  end

  add_index "opt10015s", ["stock_date", "stock_code"], name: "index_opt10015s_on_stock_date_and_stock_code", unique: true, using: :btree

  create_table "opt10059_one_ones", id: false, force: :cascade, comment: "종목별투자자기관별요청" do |t|
    t.datetime "stock_date",                                                                 comment: "일자"
    t.string   "stock_code",                  limit: 9,                                      comment: "종목코드"
    t.integer  "current_price",               limit: 4,                                      comment: "현재가"
    t.integer  "contrast_symbol",             limit: 4,                                      comment: "대비기호"
    t.integer  "contrast_yesterday",          limit: 4,                                      comment: "전일대비"
    t.decimal  "fluctuation_rate",                      precision: 5, scale: 2,              comment: "등락율"
    t.integer  "accumulated_trade_price",     limit: 4,                                      comment: "누적거래대금"
    t.integer  "domestic_investor",           limit: 4,                                      comment: "개인투자자"
    t.integer  "foreign_investor",            limit: 4,                                      comment: "외국인투자자"
    t.integer  "institution",                 limit: 4,                                      comment: "기관계"
    t.integer  "financial_investment",        limit: 4,                                      comment: "금융투자"
    t.integer  "insurance",                   limit: 4,                                      comment: "보험"
    t.integer  "investment_trust",            limit: 4,                                      comment: "투신"
    t.integer  "etc_financial",               limit: 4,                                      comment: "기타금융"
    t.integer  "bank",                        limit: 4,                                      comment: "은행"
    t.integer  "pension_fund",                limit: 4,                                      comment: "연기금등"
    t.integer  "private_equity_fund",         limit: 4,                                      comment: "사모펀드"
    t.integer  "nation",                      limit: 4,                                      comment: "국가"
    t.integer  "etc_corporation",             limit: 4,                                      comment: "기타법인"
    t.integer  "foregin_investment_in_korea", limit: 4,                                      comment: "내외국인"
    t.integer  "buyOrSell",                   limit: 4,                                      comment: "매수또는매도"
    t.integer  "priceOrAmount",               limit: 4,                                      comment: "금액또는거래량"
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
  end

  add_index "opt10059_one_ones", ["stock_date", "stock_code"], name: "index_opt10059_one_ones_on_stock_date_and_stock_code", unique: true, using: :btree

  create_table "opt10059_one_twos", id: false, force: :cascade, comment: "종목별투자자기관별요청" do |t|
    t.datetime "stock_date",                                                                 comment: "일자"
    t.string   "stock_code",                  limit: 9,                                      comment: "종목코드"
    t.integer  "current_price",               limit: 4,                                      comment: "현재가"
    t.integer  "contrast_symbol",             limit: 4,                                      comment: "대비기호"
    t.integer  "contrast_yesterday",          limit: 4,                                      comment: "전일대비"
    t.decimal  "fluctuation_rate",                      precision: 5, scale: 2,              comment: "등락율"
    t.integer  "accumulated_trade_price",     limit: 4,                                      comment: "누적거래대금"
    t.integer  "domestic_investor",           limit: 4,                                      comment: "개인투자자"
    t.integer  "foreign_investor",            limit: 4,                                      comment: "외국인투자자"
    t.integer  "institution",                 limit: 4,                                      comment: "기관계"
    t.integer  "financial_investment",        limit: 4,                                      comment: "금융투자"
    t.integer  "insurance",                   limit: 4,                                      comment: "보험"
    t.integer  "investment_trust",            limit: 4,                                      comment: "투신"
    t.integer  "etc_financial",               limit: 4,                                      comment: "기타금융"
    t.integer  "bank",                        limit: 4,                                      comment: "은행"
    t.integer  "pension_fund",                limit: 4,                                      comment: "연기금등"
    t.integer  "private_equity_fund",         limit: 4,                                      comment: "사모펀드"
    t.integer  "nation",                      limit: 4,                                      comment: "국가"
    t.integer  "etc_corporation",             limit: 4,                                      comment: "기타법인"
    t.integer  "foregin_investment_in_korea", limit: 4,                                      comment: "내외국인"
    t.integer  "buyOrSell",                   limit: 4,                                      comment: "매수또는매도"
    t.integer  "priceOrAmount",               limit: 4,                                      comment: "금액또는거래량"
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
  end

  add_index "opt10059_one_twos", ["stock_date", "stock_code"], name: "index_opt10059_one_twos_on_stock_date_and_stock_code", unique: true, using: :btree

  create_table "opt10059_two_ones", id: false, force: :cascade, comment: "종목별투자자기관별요청" do |t|
    t.datetime "stock_date",                                                                 comment: "일자"
    t.string   "stock_code",                  limit: 9,                                      comment: "종목코드"
    t.integer  "current_price",               limit: 4,                                      comment: "현재가"
    t.integer  "contrast_symbol",             limit: 4,                                      comment: "대비기호"
    t.integer  "contrast_yesterday",          limit: 4,                                      comment: "전일대비"
    t.decimal  "fluctuation_rate",                      precision: 5, scale: 2,              comment: "등락율"
    t.integer  "accumulated_trade_price",     limit: 4,                                      comment: "누적거래대금"
    t.integer  "domestic_investor",           limit: 4,                                      comment: "개인투자자"
    t.integer  "foreign_investor",            limit: 4,                                      comment: "외국인투자자"
    t.integer  "institution",                 limit: 4,                                      comment: "기관계"
    t.integer  "financial_investment",        limit: 4,                                      comment: "금융투자"
    t.integer  "insurance",                   limit: 4,                                      comment: "보험"
    t.integer  "investment_trust",            limit: 4,                                      comment: "투신"
    t.integer  "etc_financial",               limit: 4,                                      comment: "기타금융"
    t.integer  "bank",                        limit: 4,                                      comment: "은행"
    t.integer  "pension_fund",                limit: 4,                                      comment: "연기금등"
    t.integer  "private_equity_fund",         limit: 4,                                      comment: "사모펀드"
    t.integer  "nation",                      limit: 4,                                      comment: "국가"
    t.integer  "etc_corporation",             limit: 4,                                      comment: "기타법인"
    t.integer  "foregin_investment_in_korea", limit: 4,                                      comment: "내외국인"
    t.integer  "buyOrSell",                   limit: 4,                                      comment: "매수또는매도"
    t.integer  "priceOrAmount",               limit: 4,                                      comment: "금액또는거래량"
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
  end

  add_index "opt10059_two_ones", ["stock_date", "stock_code"], name: "index_opt10059_two_ones_on_stock_date_and_stock_code", unique: true, using: :btree

  create_table "opt10059_two_twos", id: false, force: :cascade, comment: "종목별투자자기관별요청" do |t|
    t.datetime "stock_date",                                                                 comment: "일자"
    t.string   "stock_code",                  limit: 9,                                      comment: "종목코드"
    t.integer  "current_price",               limit: 4,                                      comment: "현재가"
    t.integer  "contrast_symbol",             limit: 4,                                      comment: "대비기호"
    t.integer  "contrast_yesterday",          limit: 4,                                      comment: "전일대비"
    t.decimal  "fluctuation_rate",                      precision: 5, scale: 2,              comment: "등락율"
    t.integer  "accumulated_trade_price",     limit: 4,                                      comment: "누적거래대금"
    t.integer  "domestic_investor",           limit: 4,                                      comment: "개인투자자"
    t.integer  "foreign_investor",            limit: 4,                                      comment: "외국인투자자"
    t.integer  "institution",                 limit: 4,                                      comment: "기관계"
    t.integer  "financial_investment",        limit: 4,                                      comment: "금융투자"
    t.integer  "insurance",                   limit: 4,                                      comment: "보험"
    t.integer  "investment_trust",            limit: 4,                                      comment: "투신"
    t.integer  "etc_financial",               limit: 4,                                      comment: "기타금융"
    t.integer  "bank",                        limit: 4,                                      comment: "은행"
    t.integer  "pension_fund",                limit: 4,                                      comment: "연기금등"
    t.integer  "private_equity_fund",         limit: 4,                                      comment: "사모펀드"
    t.integer  "nation",                      limit: 4,                                      comment: "국가"
    t.integer  "etc_corporation",             limit: 4,                                      comment: "기타법인"
    t.integer  "foregin_investment_in_korea", limit: 4,                                      comment: "내외국인"
    t.integer  "buyOrSell",                   limit: 4,                                      comment: "매수또는매도"
    t.integer  "priceOrAmount",               limit: 4,                                      comment: "금액또는거래량"
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
  end

  add_index "opt10059_two_twos", ["stock_date", "stock_code"], name: "index_opt10059_two_twos_on_stock_date_and_stock_code", unique: true, using: :btree

  create_table "opt10059s", id: false, force: :cascade, comment: "종목별투자자기관별요청종합" do |t|
    t.datetime "stock_date",                                                                                comment: "일자"
    t.string   "stock_code",                                 limit: 9,                                      comment: "종목코드"
    t.integer  "current_price",                              limit: 4,                                      comment: "현재가"
    t.integer  "contrast_symbol",                            limit: 4,                                      comment: "대비기호"
    t.integer  "contrast_yesterday",                         limit: 4,                                      comment: "전일대비"
    t.decimal  "fluctuation_rate",                                     precision: 5, scale: 2,              comment: "등락율"
    t.integer  "accumulated_trade_price",                    limit: 4,                                      comment: "누적거래대금"
    t.integer  "net_buy_price_domestic_investor",            limit: 4,                                      comment: "순매수_금액_개인투자자"
    t.integer  "net_buy_amount_domestic_investor",           limit: 4,                                      comment: "순매수_거래량_개인투자자"
    t.integer  "buy_price_domestic_investor",                limit: 4,                                      comment: "매수_금액_개인투자자"
    t.integer  "buy_amount_domestic_investor",               limit: 4,                                      comment: "매수_거래량_개인투자자"
    t.integer  "sell_price_domestic_investorr",              limit: 4,                                      comment: "매도_금액_개인투자자"
    t.integer  "sell_amount_domestic_investor",              limit: 4,                                      comment: "매도_거래량_개인투자자"
    t.integer  "net_buy_price_foreign_investor",             limit: 4,                                      comment: "순매수_금액_외국인투자자"
    t.integer  "net_buy_amount_foreign_investor",            limit: 4,                                      comment: "순매수_거래량_외국인투자자"
    t.integer  "buy_price_foreign_investor",                 limit: 4,                                      comment: "매수_금액_외국인투자자"
    t.integer  "buy_amount_foreign_investor",                limit: 4,                                      comment: "매수_거래량_외국인투자자"
    t.integer  "sell_price_foreign_investor",                limit: 4,                                      comment: "매도_금액_외국인투자자"
    t.integer  "sell_amount_foreign_investor",               limit: 4,                                      comment: "매도_거래량_외국인투자자"
    t.integer  "net_buy_price_institution",                  limit: 4,                                      comment: "순매수_금액_기관계"
    t.integer  "net_buy_amount_institution",                 limit: 4,                                      comment: "순매수_거래량_기관계"
    t.integer  "buy_price_institution",                      limit: 4,                                      comment: "매수_금액_기관계"
    t.integer  "buy_amount_institution",                     limit: 4,                                      comment: "매수_거래량_기관계"
    t.integer  "sell_price_institution",                     limit: 4,                                      comment: "매도_금액_기관계"
    t.integer  "sell_amount_institution",                    limit: 4,                                      comment: "매도_거래량_기관계"
    t.integer  "net_buy_price_financial_investment",         limit: 4,                                      comment: "순매수_금액_금융투자"
    t.integer  "net_buy_amount_financial_investment",        limit: 4,                                      comment: "순매수_거래량_금융투자"
    t.integer  "buy_price_financial_investment",             limit: 4,                                      comment: "매수_금액_금융투자"
    t.integer  "buy_amount_financial_investment",            limit: 4,                                      comment: "매수_거래량_금융투자"
    t.integer  "sell_price_financial_investment",            limit: 4,                                      comment: "매도_금액_금융투자"
    t.integer  "sell_amount_financial_investment",           limit: 4,                                      comment: "매도_거래량_금융투자"
    t.integer  "net_buy_price_insurance",                    limit: 4,                                      comment: "순매수_금액_보험"
    t.integer  "net_buy_amount_insurance",                   limit: 4,                                      comment: "순매수_거래량_보험"
    t.integer  "buy_price_insurance",                        limit: 4,                                      comment: "매수_금액_보험"
    t.integer  "buy_amount_insurance",                       limit: 4,                                      comment: "매수_거래량_보험"
    t.integer  "sell_price_insurance",                       limit: 4,                                      comment: "매도_금액_보험"
    t.integer  "sell_amount_insurance",                      limit: 4,                                      comment: "매도_거래량_보험"
    t.integer  "net_buy_price_investment_trust",             limit: 4,                                      comment: "순매수_금액_투자신탁"
    t.integer  "net_buy_amount_investment_trust",            limit: 4,                                      comment: "순매수_거래량_투자신탁"
    t.integer  "buy_price_investment_trust",                 limit: 4,                                      comment: "매수_금액_투자신탁"
    t.integer  "buy_amount_investment_trust",                limit: 4,                                      comment: "매수_거래량_투자신탁"
    t.integer  "sell_price_investment_trust",                limit: 4,                                      comment: "매도_금액_투자신탁"
    t.integer  "sell_amount_investment_trust",               limit: 4,                                      comment: "매도_거래량_투자신탁"
    t.integer  "net_buy_price_etc_financial",                limit: 4,                                      comment: "순매수_금액_기타금융"
    t.integer  "net_buy_amount_etc_financial",               limit: 4,                                      comment: "순매수_거래량_기타금융"
    t.integer  "buy_price_etc_financial",                    limit: 4,                                      comment: "매수_금액_기타금융"
    t.integer  "buy_amount_etc_financial",                   limit: 4,                                      comment: "매수_거래량_기타금융"
    t.integer  "sell_price_etc_financial",                   limit: 4,                                      comment: "매도_금액_기타금융"
    t.integer  "sell_amount_etc_financial",                  limit: 4,                                      comment: "매도_거래량_기타금융"
    t.integer  "net_buy_price_bank",                         limit: 4,                                      comment: "순매수_금액_은행"
    t.integer  "net_buy_amount_bank",                        limit: 4,                                      comment: "순매수_거래량_은행"
    t.integer  "buy_price_bank",                             limit: 4,                                      comment: "매수_금액_은행"
    t.integer  "buy_amount_bank",                            limit: 4,                                      comment: "매수_거래량_은행"
    t.integer  "sell_price_bank",                            limit: 4,                                      comment: "매도_금액_은행"
    t.integer  "sell_amount_bank",                           limit: 4,                                      comment: "매도_거래량_은행"
    t.integer  "net_buy_price_pension_fund",                 limit: 4,                                      comment: "순매수_금액_연기금등"
    t.integer  "net_buy_amount_pension_fund",                limit: 4,                                      comment: "순매수_거래량_연기금등"
    t.integer  "buy_price_pension_fund",                     limit: 4,                                      comment: "매수_금액_연기금등"
    t.integer  "buy_amount_pension_fund",                    limit: 4,                                      comment: "매수_거래량_연기금등"
    t.integer  "sell_price_pension_fund",                    limit: 4,                                      comment: "매도_금액_연기금등"
    t.integer  "sell_amount_pension_fund",                   limit: 4,                                      comment: "매도_거래량_연기금등"
    t.integer  "net_buy_price_private_equity_fund",          limit: 4,                                      comment: "순매수_금액_사모펀드"
    t.integer  "net_buy_amount_private_equity_fund",         limit: 4,                                      comment: "순매수_거래량_사모펀드"
    t.integer  "buy_price_private_equity_fund",              limit: 4,                                      comment: "매수_금액_사모펀드"
    t.integer  "buy_amount_private_equity_fund",             limit: 4,                                      comment: "매수_거래량_사모펀드"
    t.integer  "sell_price_private_equity_fund",             limit: 4,                                      comment: "매도_금액_사모펀드"
    t.integer  "sell_amount_private_equity_fund",            limit: 4,                                      comment: "매도_거래량_사모펀드"
    t.integer  "net_buy_price_nation",                       limit: 4,                                      comment: "순매수_금액_국가"
    t.integer  "net_buy_amount_nation",                      limit: 4,                                      comment: "순매수_거래량_국가"
    t.integer  "buy_price_nation",                           limit: 4,                                      comment: "매수_금액_국가"
    t.integer  "buy_amount_nation",                          limit: 4,                                      comment: "매수_거래량_국가"
    t.integer  "sell_price_nation",                          limit: 4,                                      comment: "매도_금액_국가"
    t.integer  "sell_amount_nation",                         limit: 4,                                      comment: "매도_거래량_국가"
    t.integer  "net_buy_price_etc_corporation",              limit: 4,                                      comment: "순매수_금액_기타법인"
    t.integer  "net_buy_amount_etc_corporation",             limit: 4,                                      comment: "순매수_거래량_기타법인"
    t.integer  "buy_price_etc_corporation",                  limit: 4,                                      comment: "매수_금액_기타법인"
    t.integer  "buy_amount_etc_corporation",                 limit: 4,                                      comment: "매수_거래량_기타법인"
    t.integer  "sell_price_etc_corporation",                 limit: 4,                                      comment: "매도_금액_기타법인"
    t.integer  "sell_amount_etc_corporation",                limit: 4,                                      comment: "매도_거래량_기타법인"
    t.integer  "net_buy_price_foregin_investment_in_korea",  limit: 4,                                      comment: "순매수_금액_내외국인"
    t.integer  "net_buy_amount_foregin_investment_in_korea", limit: 4,                                      comment: "순매수_거래량_내외국인"
    t.integer  "buy_price_foregin_investment_in_korea",      limit: 4,                                      comment: "매수_금액_내외국인"
    t.integer  "buy_amount_foregin_investment_in_korea",     limit: 4,                                      comment: "매수_거래량_내외국인"
    t.integer  "sell_price_foregin_investment_in_korea",     limit: 4,                                      comment: "매도_금액_내외국인"
    t.integer  "sell_amount_foregin_investment_in_korea",    limit: 4,                                      comment: "매도_거래량_내외국인"
    t.datetime "created_at",                                                                   null: false
    t.datetime "updated_at",                                                                   null: false
  end

  add_index "opt10059s", ["stock_date", "stock_code"], name: "index_opt10059s_on_stock_date_and_stock_code", unique: true, using: :btree

  create_table "opt10075s", id: false, force: :cascade, comment: "실시간미체결요청" do |t|
    t.datetime "contract_time",                                   comment: "체결일자"
    t.string   "account_number",          limit: 10,              comment: "계좌번호"
    t.string   "order_number",            limit: 10,              comment: "주문번호"
    t.string   "manager_number",          limit: 7,               comment: "관리사번"
    t.string   "stock_code",              limit: 9,               comment: "종목코드"
    t.string   "business_gubun",          limit: 9,               comment: "업무구분"
    t.string   "order_status",            limit: 10,              comment: "주문상태"
    t.string   "stock_name",              limit: 50,              comment: "종목명"
    t.integer  "order_quantity",          limit: 4,               comment: "주문수량"
    t.integer  "order_price",             limit: 4,               comment: "주문가격"
    t.integer  "not_contract_quantity",   limit: 4,               comment: "미체결수량"
    t.integer  "contract_total_amount",   limit: 4,               comment: "체결누적금액"
    t.string   "last_order_number",       limit: 10,              comment: "원주문번호"
    t.string   "order_gubun",             limit: 10,              comment: "주문구분"
    t.string   "trade_gubun",             limit: 10,              comment: "매매구분"
    t.string   "contract_number",         limit: 10,              comment: "체결번호"
    t.integer  "contract_price",          limit: 4,               comment: "체결가"
    t.integer  "contract_quantity",       limit: 4,               comment: "체결량"
    t.integer  "current_price",           limit: 4,               comment: "현재가"
    t.integer  "offered_price",           limit: 4,               comment: "매도호가"
    t.integer  "bid_price",               limit: 4,               comment: "매수호가"
    t.integer  "contract_price_unit",     limit: 4,               comment: "단위체결가"
    t.integer  "contract_price_quantity", limit: 4,               comment: "단위체결량"
    t.integer  "today_commission",        limit: 4,               comment: "당일매매수수료"
    t.integer  "today_tax",               limit: 4,               comment: "당일매매세금"
    t.string   "domestic_investor",       limit: 10,              comment: "개인투자자"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "opt10075s", ["contract_time", "order_number"], name: "index_opt10075s_on_contract_time_and_order_number", unique: true, using: :btree

  create_table "opt10080s", id: false, force: :cascade, comment: "주식분봉차트조회요청" do |t|
    t.string   "stock_code",              limit: 9,                                      comment: "종목코드"
    t.integer  "current_price",           limit: 4,                                      comment: "현재가"
    t.integer  "trade_quantity",          limit: 4,                                      comment: "거래량"
    t.datetime "contract_time",                                                          comment: "체결시간"
    t.integer  "start_price",             limit: 4,                                      comment: "시가"
    t.integer  "high_price",              limit: 4,                                      comment: "고가"
    t.integer  "low_price",               limit: 4,                                      comment: "저가"
    t.integer  "modify_stock_gubun",      limit: 4,                                      comment: "수정주가구분"
    t.decimal  "modify_rate",                       precision: 5, scale: 2,              comment: "수정비율"
    t.integer  "big_type_of_business",    limit: 4,                                      comment: "대업종구분"
    t.integer  "small_type_of_business",  limit: 4,                                      comment: "소업종구분"
    t.integer  "stock_info",              limit: 4,                                      comment: "종목정보"
    t.integer  "modify_stock_event",      limit: 4,                                      comment: "수정주가이벤트"
    t.integer  "yesterday_current_price", limit: 4,                                      comment: "전일종가"
    t.datetime "created_at",                                                null: false
    t.datetime "updated_at",                                                null: false
  end

  add_index "opt10080s", ["contract_time", "stock_code"], name: "index_opt10080s_on_contract_time_and_stock_code", unique: true, using: :btree

  create_table "opt10081s", id: false, force: :cascade, comment: "주식일봉차트테이블" do |t|
    t.datetime "stock_date",                            comment: "일자"
    t.string   "stock_code",     limit: 9,              comment: "종목코드"
    t.integer  "current_price",  limit: 4,              comment: "현재가"
    t.integer  "trade_quantity", limit: 4,              comment: "거래량"
    t.integer  "trade_price",    limit: 4,              comment: "거래대금"
    t.integer  "start_price",    limit: 4,              comment: "장 시작 금액(시가)"
    t.integer  "high_price",     limit: 4,              comment: "고가"
    t.integer  "low_price",      limit: 4,              comment: "저가"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "opt10081s", ["stock_date", "stock_code"], name: "index_opt10081s_on_stock_date_and_stock_code", unique: true, using: :btree

  create_table "opt10085s", id: false, force: :cascade, comment: "계좌수익률요청" do |t|
    t.datetime "date_of_purchase",                                                                    comment: "구매일자"
    t.string   "account_number",                      limit: 10,                                      comment: "계좌번호"
    t.string   "stock_code",                          limit: 9,                                       comment: "종목코드"
    t.string   "stock_name",                          limit: 20,                                      comment: "종목이름"
    t.integer  "current_price",                       limit: 4,                                       comment: "현재가"
    t.integer  "purchase_price",                      limit: 4,                                       comment: "매입가"
    t.integer  "total_amount_of_purchase",            limit: 4,                                       comment: "매입금액"
    t.integer  "possession_quantity",                 limit: 4,                                       comment: "보유수량"
    t.integer  "today_sell_profit_and_loss",          limit: 4,                                       comment: "당일매도손익"
    t.integer  "today_commission",                    limit: 4,                                       comment: "당일매매수수료"
    t.integer  "today_tax",                           limit: 4,                                       comment: "당일매매세금"
    t.string   "credit_gubun",                        limit: 2,                                       comment: "신용구분"
    t.string   "loan_date",                           limit: 8,                                       comment: "대출일"
    t.integer  "payment_balance",                     limit: 4,                                       comment: "결제잔고"
    t.integer  "sellable_quantity",                   limit: 4,                                       comment: "청산가능수량"
    t.integer  "credit_amount",                       limit: 4,                                       comment: "신용금액"
    t.integer  "credit_interest",                     limit: 4,                                       comment: "신용이자"
    t.string   "expiration_date",                     limit: 8,                                       comment: "만기일"
    t.integer  "valuation_profit_and_loss",           limit: 4,                                       comment: "평가손익"
    t.decimal  "earnings_rate",                                  precision: 5, scale: 2,              comment: "수익률"
    t.integer  "evaluated_price",                     limit: 4,                                       comment: "평가금액"
    t.integer  "commission",                          limit: 4,                                       comment: "수수료"
    t.integer  "buying_commission",                   limit: 4,                                       comment: "매입수수료"
    t.integer  "selling_commission",                  limit: 4,                                       comment: "매도수수료"
    t.integer  "selling_tax",                         limit: 4,                                       comment: "매도세금"
    t.integer  "will_profit_price",                   limit: 4,                                       comment: "손익분기매입가"
    t.integer  "not_commission_profit_and_loss",      limit: 4,                                       comment: "손익금액"
    t.decimal  "not_commission_profit_and_loss_rate",            precision: 5, scale: 2,              comment: "손익율"
    t.integer  "order_status",                        limit: 4,                                       comment: "주문상태 1 <=보유,2<=매도중,3<=매도완료"
    t.datetime "created_at",                                                             null: false
    t.datetime "updated_at",                                                             null: false
  end

  add_index "opt10085s", ["date_of_purchase", "account_number", "stock_code"], name: "index_opt10085s_on_date_of_purchase_and", unique: true, using: :btree

  create_table "opw00003s", id: false, force: :cascade, comment: "추정자산조회요청" do |t|
    t.datetime "search_date",                                            comment: "조회날짜"
    t.string   "account_number",                 limit: 10,              comment: "계좌번호"
    t.integer  "estimation_deposition_property", limit: 4,               comment: "추정예탁자산"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  add_index "opw00003s", ["search_date", "account_number"], name: "index_opw00003s_on_search_date_and_account_number", unique: true, using: :btree

  create_table "ordereds", force: :cascade, comment: "주문체결" do |t|
    t.datetime "contract_time",                                         comment: "주문/체결시간"
    t.string   "account_number",                limit: 10,              comment: "계좌번호"
    t.string   "order_number",                  limit: 10,              comment: "주문번호"
    t.string   "manager_number",                limit: 7,               comment: "관리자사번"
    t.string   "stock_code",                    limit: 9,               comment: "종목코드, 업종코드"
    t.string   "order_business_classification", limit: 9,               comment: "주문업무분류"
    t.string   "order_status",                  limit: 10,              comment: "주문상태"
    t.string   "stock_name",                    limit: 50,              comment: "종목명"
    t.integer  "order_quantity",                limit: 4,               comment: "주문수량"
    t.integer  "order_price",                   limit: 4,               comment: "주문가격"
    t.integer  "not_contract_quantity",         limit: 4,               comment: "미체결수량"
    t.integer  "contract_total_amount",         limit: 4,               comment: "체결누계금액"
    t.string   "last_order_number",             limit: 10,              comment: "원주문번호"
    t.string   "order_gubun",                   limit: 10,              comment: "주문구분(+현금내수, -현금매도…)"
    t.string   "trade_gubun",                   limit: 10,              comment: "매매구분(보통, 시장가…)"
    t.integer  "order_type",                    limit: 4,               comment: "매도수구분(1:매도, 2:매수)"
    t.integer  "contract_number",               limit: 4,               comment: "체결번호"
    t.integer  "contract_price",                limit: 4,               comment: "체결가"
    t.integer  "contract_quantity",             limit: 4,               comment: "체결량"
    t.integer  "current_price",                 limit: 4,               comment: "현재가, 체결가, 실시간종가"
    t.integer  "offered_price",                 limit: 4,               comment: "(최우선)매도호가"
    t.integer  "bid_price",                     limit: 4,               comment: "(최우선)매수호가"
    t.integer  "contract_price_unit",           limit: 4,               comment: "단위체결가"
    t.integer  "contract_price_quantity",       limit: 4,               comment: "단위체결량"
    t.integer  "today_commission",              limit: 4,               comment: "당일매매수수료"
    t.integer  "today_tax",                     limit: 4,               comment: "당일매매세금"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "ordereds", ["order_number"], name: "index_ordereds_on_order_number", using: :btree
  add_index "ordereds", ["stock_code"], name: "index_ordereds_on_stock_code", using: :btree

  create_table "orders", force: :cascade, comment: "주문접수" do |t|
    t.datetime "contract_time",                                         comment: "주문/체결시간"
    t.string   "account_number",                limit: 10,              comment: "계좌번호"
    t.string   "order_number",                  limit: 10,              comment: "주문번호"
    t.string   "manager_number",                limit: 7,               comment: "관리자사번"
    t.string   "stock_code",                    limit: 9,               comment: "종목코드, 업종코드"
    t.string   "order_business_classification", limit: 9,               comment: "주문업무분류"
    t.string   "order_status",                  limit: 10,              comment: "주문상태"
    t.string   "stock_name",                    limit: 50,              comment: "종목명"
    t.integer  "order_quantity",                limit: 4,               comment: "주문수량"
    t.integer  "order_price",                   limit: 4,               comment: "주문가격"
    t.integer  "not_contract_quantity",         limit: 4,               comment: "미체결수량"
    t.integer  "contract_total_amount",         limit: 4,               comment: "체결누계금액"
    t.string   "last_order_number",             limit: 10,              comment: "원주문번호"
    t.string   "order_gubun",                   limit: 10,              comment: "주문구분(+현금내수, -현금매도…)"
    t.string   "trade_gubun",                   limit: 10,              comment: "매매구분(보통, 시장가…)"
    t.integer  "order_type",                    limit: 4,               comment: "매도수구분(1:매도, 2:매수)"
    t.integer  "contract_number",               limit: 4,               comment: "체결번호"
    t.integer  "contract_price",                limit: 4,               comment: "체결가"
    t.integer  "contract_quantity",             limit: 4,               comment: "체결량"
    t.integer  "current_price",                 limit: 4,               comment: "현재가, 체결가, 실시간종가"
    t.integer  "offered_price",                 limit: 4,               comment: "(최우선)매도호가"
    t.integer  "bid_price",                     limit: 4,               comment: "(최우선)매수호가"
    t.integer  "contract_price_unit",           limit: 4,               comment: "단위체결가"
    t.integer  "contract_price_quantity",       limit: 4,               comment: "단위체결량"
    t.integer  "today_commission",              limit: 4,               comment: "당일매매수수료"
    t.integer  "today_tax",                     limit: 4,               comment: "당일매매세금"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "orders", ["order_number"], name: "index_orders_on_order_number", using: :btree
  add_index "orders", ["stock_code"], name: "index_orders_on_stock_code", using: :btree

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

  create_table "realtime_best_offered_and_bids", force: :cascade, comment: "주식우선호가" do |t|
    t.datetime "stock_date",                           comment: "주식조회시간"
    t.string   "stock_code",    limit: 9,              comment: "종목코드"
    t.integer  "offered_price", limit: 4,              comment: "매도호가"
    t.integer  "bid_price",     limit: 4,              comment: "매수호가"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "realtime_best_offered_and_bids", ["stock_date", "stock_code"], name: "realtime_best_offered_and_bids_on_stock_date", using: :hash

  create_table "realtime_contracts", force: :cascade, comment: "주식체결" do |t|
    t.datetime "stock_date",                                                                         comment: "주식조회시간"
    t.string   "stock_code",                        limit: 9,                                        comment: "종목코드"
    t.integer  "current_price",                     limit: 4,                                        comment: "현재가"
    t.decimal  "contrast_yesterday",                           precision: 10,                        comment: "전일대비"
    t.decimal  "fluctuation_rate",                             precision: 5,  scale: 2,              comment: "등락율"
    t.integer  "offered_price",                     limit: 4,                                        comment: "매도호가"
    t.integer  "bid_price",                         limit: 4,                                        comment: "매수호가"
    t.integer  "trade_quantity",                    limit: 4,                                        comment: "거래량"
    t.integer  "accumulated_trade_quantity",        limit: 4,                                        comment: "누적거래량"
    t.integer  "accumulated_trade_price",           limit: 4,                                        comment: "누적거래대금"
    t.integer  "start_price",                       limit: 4,                                        comment: "시가"
    t.integer  "high_price",                        limit: 4,                                        comment: "고가"
    t.integer  "low_price",                         limit: 4,                                        comment: "저가"
    t.integer  "contrast_yesterday_symbol",         limit: 4,                                        comment: "전일대비기호"
    t.integer  "yesterday_contrast_trade_quantity", limit: 4,                                        comment: "전일거래량대비(계약,주)"
    t.decimal  "trade_amount_variation",                       precision: 20,                        comment: "거래대금증감"
    t.decimal  "yesterday_contrast_trade_rate",                precision: 10,                        comment: "전일거래량대비(비율)"
    t.decimal  "trade_turnover_ratio",                         precision: 5,  scale: 2,              comment: "거래회전율"
    t.integer  "trade_cost",                        limit: 4,                                        comment: "거래비용"
    t.decimal  "contract_strength",                            precision: 10,                        comment: "체결강도"
    t.integer  "total_market_price",                limit: 4,                                        comment: "시가총액(억)"
    t.integer  "market_gubun",                      limit: 4,                                        comment: "장구분"
    t.integer  "ko_accessibility_rate",             limit: 4,                                        comment: "KO접근도"
    t.string   "upper_price_limit_time",            limit: 20,                                       comment: "상한가발생시간"
    t.string   "lower_price_limit_time",            limit: 20,                                       comment: "하한가발생시간"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
  end

  add_index "realtime_contracts", ["stock_date", "stock_code"], name: "index_realtime_contracts_on_stock_date_and_stock_code", using: :hash

  create_table "realtime_offered_and_bids", force: :cascade, comment: "주식호가잔량" do |t|
    t.datetime "stock_date",                                                                                      comment: "주식조회시간"
    t.string   "stock_code",                                                limit: 9,                             comment: "종목코드"
    t.integer  "offered_price1",                                            limit: 4,                             comment: "매도호가1"
    t.integer  "offered_quantity1",                                         limit: 4,                             comment: "매도호가수량1"
    t.integer  "offered_price_contrast1",                                   limit: 4,                             comment: "매도호가직전대비1"
    t.integer  "bid_price1",                                                limit: 4,                             comment: "매수호가1"
    t.integer  "bid_quantity1",                                             limit: 4,                             comment: "매수호가수량1"
    t.integer  "bid_price_contrast1",                                       limit: 4,                             comment: "매수호가직전대비1"
    t.integer  "offered_price2",                                            limit: 4,                             comment: "매도호가2"
    t.integer  "offered_quantity2",                                         limit: 4,                             comment: "매도호가수량2"
    t.integer  "offered_price_contrast2",                                   limit: 4,                             comment: "매수호가2"
    t.integer  "bid_price2",                                                limit: 4,                             comment: "매수호가2"
    t.integer  "bid_quantity2",                                             limit: 4,                             comment: "매수호가수량2"
    t.integer  "bid_price_contrast2",                                       limit: 4,                             comment: "매수호가직전대비2"
    t.integer  "offered_price3",                                            limit: 4,                             comment: "매도호가3"
    t.integer  "offered_quantity3",                                         limit: 4,                             comment: "매도호가수량3"
    t.integer  "offered_price_contrast3",                                   limit: 4,                             comment: "매도호가직전대비3"
    t.integer  "bid_price3",                                                limit: 4,                             comment: "매수호가3"
    t.integer  "bid_quantity3",                                             limit: 4,                             comment: "매수호가수량3"
    t.integer  "bid_price_contrast3",                                       limit: 4,                             comment: "매수호가직전대비3"
    t.integer  "offered_price4",                                            limit: 4,                             comment: "매도호가4"
    t.integer  "offered_quantity4",                                         limit: 4,                             comment: "매도호가수량4"
    t.integer  "offered_price_contrast4",                                   limit: 4,                             comment: "매도호가직전대비4"
    t.integer  "bid_price4",                                                limit: 4,                             comment: "매수호가4"
    t.integer  "bid_quantity4",                                             limit: 4,                             comment: "매수호가직전대비4"
    t.integer  "bid_price_contrast4",                                       limit: 4,                             comment: "매수호가직전대비4"
    t.integer  "offered_price5",                                            limit: 4,                             comment: "매도호가5"
    t.integer  "offered_quantity5",                                         limit: 4,                             comment: "매도호가수량5"
    t.integer  "offered_price_contrast5",                                   limit: 4,                             comment: "매도호가직전대비5"
    t.integer  "bid_price5",                                                limit: 4,                             comment: "매수호가5"
    t.integer  "bid_quantity5",                                             limit: 4,                             comment: "매수호가수량5"
    t.integer  "bid_price_contrast5",                                       limit: 4,                             comment: "매수호가직전대비5"
    t.integer  "offered_price6",                                            limit: 4,                             comment: "매도호가6"
    t.integer  "offered_quantity6",                                         limit: 4,                             comment: "매도호가직전대비6"
    t.integer  "offered_price_contrast6",                                   limit: 4,                             comment: "매도호가직전대비6"
    t.integer  "bid_price6",                                                limit: 4,                             comment: "매수호가수량6"
    t.integer  "bid_quantity6",                                             limit: 4,                             comment: "매수호가수량6"
    t.integer  "bid_price_contrast6",                                       limit: 4,                             comment: "매수호가직전대비6"
    t.integer  "offered_price7",                                            limit: 4,                             comment: "매도호가7"
    t.integer  "offered_quantity7",                                         limit: 4,                             comment: "매도호가수량7"
    t.integer  "offered_price_contrast7",                                   limit: 4,                             comment: "매도호가직전대비7"
    t.integer  "bid_price7",                                                limit: 4,                             comment: "매수호가7"
    t.integer  "bid_quantity7",                                             limit: 4,                             comment: "매수호가수량7"
    t.integer  "bid_price_contrast7",                                       limit: 4,                             comment: "매수호가직전대비7"
    t.integer  "offered_price8",                                            limit: 4,                             comment: "매도호가8"
    t.integer  "offered_quantity8",                                         limit: 4,                             comment: "매도호가수량8"
    t.integer  "offered_price_contrast8",                                   limit: 4,                             comment: "매도호가직전대비8"
    t.integer  "bid_price8",                                                limit: 4,                             comment: "매수호가8"
    t.integer  "bid_quantity8",                                             limit: 4,                             comment: "매수호가수량8"
    t.integer  "bid_price_contrast8",                                       limit: 4,                             comment: "매수호가직전대비8"
    t.integer  "offered_price9",                                            limit: 4,                             comment: "매도호가수량9"
    t.integer  "offered_quantity9",                                         limit: 4,                             comment: "매도호가수량9"
    t.integer  "offered_price_contrast9",                                   limit: 4,                             comment: "매도호가직전대비9"
    t.integer  "bid_price9",                                                limit: 4,                             comment: "매수호가9"
    t.integer  "bid_quantity9",                                             limit: 4,                             comment: "매수호가수량9"
    t.integer  "bid_price_contrast9",                                       limit: 4,                             comment: "매수호가직전대비9"
    t.integer  "offered_price10",                                           limit: 4,                             comment: "매도호가10"
    t.integer  "offered_quantity10",                                        limit: 4,                             comment: "매도호가수량10"
    t.integer  "offered_price_contrast10",                                  limit: 4,                             comment: "매도호가직전대비10"
    t.integer  "bid_price10",                                               limit: 4,                             comment: "매수호가10"
    t.integer  "bid_quantity10",                                            limit: 4,                             comment: "매수호가수량10"
    t.integer  "bid_price_contrast10",                                      limit: 4,                             comment: "매수호가직전대비10"
    t.integer  "offered_total_residual_quantity",                           limit: 4,                             comment: "매도호가총잔량"
    t.integer  "offered_total_residual_quantity_contrast",                  limit: 4,                             comment: "매도호가총잔량직전대비"
    t.integer  "bid_total_residual_quantity",                               limit: 4,                             comment: "매수호가총잔량"
    t.integer  "bid_total_residual_quantity_contrast",                      limit: 4,                             comment: "매수호가총잔량직전대비"
    t.integer  "expectation_contract_price",                                limit: 4,                             comment: "예상체결가"
    t.integer  "expectation_contract_quantity",                             limit: 4,                             comment: "예상체결수량"
    t.integer  "net_buy_residual_quantity",                                 limit: 4,                             comment: "순매수잔량"
    t.decimal  "bid_rate",                                                            precision: 10,              comment: "매수비율"
    t.integer  "net_sell_residual_quantity",                                limit: 4,                             comment: "순매도잔량"
    t.integer  "offered_rate",                                              limit: 4,                             comment: "매도비율"
    t.integer  "expectation_contract_yesterday_contrast_price",             limit: 4,                             comment: "예상체결가전일종가대비"
    t.decimal  "expectation_contract_yesterday_contrast_fluctuation_rate",            precision: 10,              comment: "예상체결가전일종가대비등락율"
    t.integer  "expectation_contract_yesterday_contrast_symbol",            limit: 4,                             comment: "예상체결가전일종가대비기호"
    t.integer  "expectation_contract_price1",                               limit: 4,                             comment: "예상체결가1"
    t.integer  "expectation_contract_quantity1",                            limit: 4,                             comment: "예상체결량1"
    t.integer  "expectation_contract_yesterday_contrast_symbol1",           limit: 4,                             comment: "예상체결가전일대비기호1"
    t.integer  "expectation_contract_yesterday_contrast_price1",            limit: 4,                             comment: "예상체결가전일대비"
    t.decimal  "expectation_contract_yesterday_contrast_fluctuation_rate1",           precision: 10,              comment: "예상체결가전일대비등락율"
    t.integer  "lp_offered_quantity1",                                      limit: 4,                             comment: "LP매도호가수량1"
    t.integer  "lp_bid_quantity1",                                          limit: 4,                             comment: "LP매수호가수량1"
    t.integer  "lp_offered_quantity2",                                      limit: 4,                             comment: "LP매도호가수량2"
    t.integer  "lp_bid_quantity2",                                          limit: 4,                             comment: "LP매수호가수량2"
    t.integer  "lp_offered_quantity3",                                      limit: 4,                             comment: "LP매도호가수량3"
    t.integer  "lp_bid_quantity3",                                          limit: 4,                             comment: "LP매수호가수량3"
    t.integer  "lp_offered_quantity4",                                      limit: 4,                             comment: "LP매도호가수량4"
    t.integer  "lp_bid_quantity4",                                          limit: 4,                             comment: "LP매수호가수량4"
    t.integer  "lp_offered_quantity5",                                      limit: 4,                             comment: "LP매도호가수량5"
    t.integer  "lp_bid_quantity5",                                          limit: 4,                             comment: "LP매수호가수량5"
    t.integer  "lp_offered_quantity6",                                      limit: 4,                             comment: "LP매도호가수량6"
    t.integer  "lp_bid_quantity6",                                          limit: 4,                             comment: "LP매수호가수량6"
    t.integer  "lp_offered_quantity7",                                      limit: 4,                             comment: "LP매도호가수량7"
    t.integer  "lp_bid_quantity7",                                          limit: 4,                             comment: "LP매수호가수량7"
    t.integer  "lp_offered_quantity8",                                      limit: 4,                             comment: "LP매도호가수량8"
    t.integer  "lp_bid_quantity8",                                          limit: 4,                             comment: "LP매수호가수량8"
    t.integer  "lp_offered_quantity9",                                      limit: 4,                             comment: "LP매도호가수량9"
    t.integer  "lp_bid_quantity9",                                          limit: 4,                             comment: "LP매수호가수량9"
    t.integer  "lp_offered_quantity10",                                     limit: 4,                             comment: "LP매도호가수량10"
    t.integer  "lp_bid_quantity10",                                         limit: 4,                             comment: "LP매수호가수량10"
    t.integer  "accumulated_trade_quantity",                                limit: 4,                             comment: "누적거래량"
    t.decimal  "expectation_contract_yesterday_contrast_rate",                        precision: 10,              comment: "전일거래량대비예상체결률"
    t.integer  "market_gubun",                                              limit: 4,                             comment: "장운영구분"
    t.integer  "investor_ticker",                                           limit: 4,                             comment: "투자자별ticker"
    t.datetime "created_at",                                                                         null: false
    t.datetime "updated_at",                                                                         null: false
  end

  add_index "realtime_offered_and_bids", ["stock_date", "stock_code"], name: "index_realtime_offered_and_bids_on_stock_date_and_stock_code", using: :hash

  create_table "realtime_prices", force: :cascade, comment: "주식시세" do |t|
    t.datetime "stock_date",                                                                         comment: "주식조회시간"
    t.string   "stock_code",                        limit: 9,                                        comment: "종목코드"
    t.integer  "current_price",                     limit: 4,                                        comment: "현재가"
    t.integer  "contrast_yesterday",                limit: 4,                                        comment: "전일대비"
    t.decimal  "fluctuation_rate",                             precision: 5,  scale: 2,              comment: "등락율"
    t.integer  "offered_price",                     limit: 4,                                        comment: "매도호가"
    t.integer  "bid_price",                         limit: 4,                                        comment: "매수호가"
    t.integer  "accumulated_trade_quantity",        limit: 4,                                        comment: "누적거래량"
    t.integer  "accumulated_trade_price",           limit: 4,                                        comment: "누적거래대금"
    t.integer  "start_price",                       limit: 4,                                        comment: "시가"
    t.integer  "high_price",                        limit: 4,                                        comment: "고가"
    t.integer  "low_price",                         limit: 4,                                        comment: "저가"
    t.integer  "contrast_yesterday_symbol",         limit: 4,                                        comment: "전일대비기호"
    t.decimal  "yesterday_contrast_trade_quantity",            precision: 10,                        comment: "전일거래량대비(계약,주)"
    t.decimal  "trade_amount_variation",                       precision: 20,                        comment: "거래대금증감"
    t.decimal  "yesterday_contrast_trade_rate",                precision: 10,                        comment: "전일거래량대비(비율)"
    t.decimal  "trade_turnover_ratio",                         precision: 5,  scale: 2,              comment: "거래회전율"
    t.integer  "trade_cost",                        limit: 4,                                        comment: "거래비용"
    t.integer  "total_market_price",                limit: 4,                                        comment: "시가총액(억)"
    t.string   "upper_price_limit_time",            limit: 20,                                       comment: "상한가발생시간"
    t.string   "lower_price_limit_time",            limit: 20,                                       comment: "하한가발생시간"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
  end

  add_index "realtime_prices", ["stock_date", "stock_code"], name: "index_realtime_prices_on_stock_date_and_stock_code", using: :hash

  create_table "screen_infos", force: :cascade do |t|
    t.string   "screen_number", limit: 4
    t.string   "tr_code",       limit: 10
    t.string   "rq_name",       limit: 30
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
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
