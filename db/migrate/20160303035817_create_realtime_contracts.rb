class CreateRealtimeContracts < ActiveRecord::Migration
  def change
    create_table :realtime_contracts  , options: "ENGINE=MEMORY" ,:comment => "주식체결"  do |t|
      t.timestamp :stock_date  ,:comment => "주식조회시간"
      t.string :stock_code, limit: 9 ,:comment => "종목코드"
      t.integer :current_price  ,:comment => "현재가"
      t.decimal :contrast_yesterday  ,:comment => "전일대비"
      t.decimal :fluctuation_rate , precision: 5, scale: 2 ,:comment => "등락율"
      t.integer :offered_price ,:comment => "매도호가"
      t.integer :bid_price ,:comment => "매수호가"
      t.integer :trade_quantity ,:comment => "거래량"
      t.integer :accumulated_trade_quantity ,:comment => "누적거래량"
      t.integer :accumulated_trade_price ,:comment => "누적거래대금"
      t.integer :start_price ,:comment => "시가"
      t.integer :high_price ,:comment => "고가"
      t.integer :low_price ,:comment => "저가"
      t.integer :contrast_yesterday_symbol ,:comment => "전일대비기호"
      t.integer :yesterday_contrast_trade_quantity ,:comment => "전일거래량대비(계약,주)"
      t.decimal :trade_amount_variation , precision: 20 ,:comment => "거래대금증감"
      t.decimal :yesterday_contrast_trade_rate ,:comment => "전일거래량대비(비율)"
      t.decimal :trade_turnover_ratio  , precision: 5, scale: 2 ,:comment => "거래회전율"
      t.integer :trade_cost ,:comment => "거래비용"
      t.decimal :contract_strength ,:comment => "체결강도"
      t.integer :total_market_price ,:comment => "시가총액(억)"
      t.integer :market_gubun ,:comment => "장구분"
      t.integer :ko_accessibility_rate ,:comment => "KO접근도"
      t.string :upper_price_limit_time, limit: 20 ,:comment => "상한가발생시간"
      t.string :lower_price_limit_time, limit: 20 ,:comment => "하한가발생시간"

      t.timestamps null: false
    end
    add_index :realtime_contracts, [:stock_date, :stock_code ]
  end
end
