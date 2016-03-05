class CreateRealtimeOfferedAndBids < ActiveRecord::Migration
  def change
    create_table :realtime_offered_and_bids  , options: "ENGINE=MEMORY" ,:comment => "주식호가잔량" do |t|
      t.timestamp :stock_date  ,:comment => "주식조회시간"
      t.string :stock_code, limit: 9 ,:comment => "종목코드"
      t.integer :offered_price1  ,:comment => "매도호가1"
      t.integer :offered_quantity1  ,:comment => "매도호가수량1"
      t.integer :offered_price_contrast1  ,:comment => "매도호가직전대비1"
      t.integer :bid_price1  ,:comment => "매수호가1"
      t.integer :bid_quantity1 ,:comment => "매수호가수량1"
      t.integer :bid_price_contrast1  ,:comment => "매수호가직전대비1"
      t.integer :offered_price2  ,:comment => "매도호가2"
      t.integer :offered_quantity2  ,:comment => "매도호가수량2"
      t.integer :offered_price_contrast2  ,:comment => "매수호가2"
      t.integer :bid_price2  ,:comment => "매수호가2"
      t.integer :bid_quantity2  ,:comment => "매수호가수량2"
      t.integer :bid_price_contrast2  ,:comment => "매수호가직전대비2"
      t.integer :offered_price3  ,:comment => "매도호가3"
      t.integer :offered_quantity3  ,:comment => "매도호가수량3"
      t.integer :offered_price_contrast3  ,:comment => "매도호가직전대비3"
      t.integer :bid_price3  ,:comment => "매수호가3"
      t.integer :bid_quantity3  ,:comment => "매수호가수량3"
      t.integer :bid_price_contrast3  ,:comment => "매수호가직전대비3"
      t.integer :offered_price4  ,:comment => "매도호가4"
      t.integer :offered_quantity4 ,:comment => "매도호가수량4"
      t.integer :offered_price_contrast4  ,:comment => "매도호가직전대비4"
      t.integer :bid_price4  ,:comment => "매수호가4"
      t.integer :bid_quantity4 ,:comment => "매수호가직전대비4"
      t.integer :bid_price_contrast4  ,:comment => "매수호가직전대비4"
      t.integer :offered_price5  ,:comment => "매도호가5"
      t.integer :offered_quantity5  ,:comment => "매도호가수량5"
      t.integer :offered_price_contrast5  ,:comment => "매도호가직전대비5"
      t.integer :bid_price5  ,:comment => "매수호가5"
      t.integer :bid_quantity5  ,:comment => "매수호가수량5"
      t.integer :bid_price_contrast5  ,:comment => "매수호가직전대비5"
      t.integer :offered_price6  ,:comment => "매도호가6"
      t.integer :offered_quantity6  ,:comment => "매도호가직전대비6"
      t.integer :offered_price_contrast6  ,:comment => "매도호가직전대비6"
      t.integer :bid_price6  ,:comment => "매수호가수량6"
      t.integer :bid_quantity6  ,:comment => "매수호가수량6"
      t.integer :bid_price_contrast6  ,:comment => "매수호가직전대비6"
      t.integer :offered_price7  ,:comment => "매도호가7"
      t.integer :offered_quantity7  ,:comment => "매도호가수량7"
      t.integer :offered_price_contrast7  ,:comment => "매도호가직전대비7"
      t.integer :bid_price7  ,:comment => "매수호가7"
      t.integer :bid_quantity7  ,:comment => "매수호가수량7"
      t.integer :bid_price_contrast7  ,:comment => "매수호가직전대비7"
      t.integer :offered_price8  ,:comment => "매도호가8"
      t.integer :offered_quantity8  ,:comment => "매도호가수량8"
      t.integer :offered_price_contrast8  ,:comment => "매도호가직전대비8"
      t.integer :bid_price8  ,:comment => "매수호가8"
      t.integer :bid_quantity8  ,:comment => "매수호가수량8"
      t.integer :bid_price_contrast8  ,:comment => "매수호가직전대비8"
      t.integer :offered_price9  ,:comment => "매도호가수량9"
      t.integer :offered_quantity9  ,:comment => "매도호가수량9"
      t.integer :offered_price_contrast9  ,:comment => "매도호가직전대비9"
      t.integer :bid_price9  ,:comment => "매수호가9"
      t.integer :bid_quantity9  ,:comment => "매수호가수량9"
      t.integer :bid_price_contrast9  ,:comment => "매수호가직전대비9"
      t.integer :offered_price10  ,:comment => "매도호가10"
      t.integer :offered_quantity10  ,:comment => "매도호가수량10"
      t.integer :offered_price_contrast10  ,:comment => "매도호가직전대비10"
      t.integer :bid_price10    ,:comment => "매수호가10"
      t.integer :bid_quantity10   ,:comment => "매수호가수량10"
      t.integer :bid_price_contrast10   ,:comment => "매수호가직전대비10"
      t.integer :offered_total_residual_quantity   ,:comment => "매도호가총잔량"
      t.integer :offered_total_residual_quantity_contrast   ,:comment => "매도호가총잔량직전대비"
      t.integer :bid_total_residual_quantity   ,:comment => "매수호가총잔량"
      t.integer :bid_total_residual_quantity_contrast   ,:comment => "매수호가총잔량직전대비"
      t.integer :expectation_contract_price   ,:comment => "예상체결가"
      t.integer :expectation_contract_quantity   ,:comment => "예상체결수량"
      t.integer :net_buy_residual_quantity ,:comment => "순매수잔량"
      t.decimal :bid_rate ,:comment => "매수비율"
      t.integer :net_sell_residual_quantity ,:comment => "순매도잔량"
      t.integer :offered_rate ,:comment => "매도비율"
      t.integer :expectation_contract_yesterday_contrast_price ,:comment => "예상체결가전일종가대비"
      t.decimal :expectation_contract_yesterday_contrast_fluctuation_rate ,:comment => "예상체결가전일종가대비등락율"
      t.integer :expectation_contract_yesterday_contrast_symbol ,:comment => "예상체결가전일종가대비기호"
      t.integer :expectation_contract_price1 ,:comment => "예상체결가1"
      t.integer :expectation_contract_quantity1 ,:comment => "예상체결량1"
      t.integer :expectation_contract_yesterday_contrast_symbol1 ,:comment => "예상체결가전일대비기호1"
      t.integer :expectation_contract_yesterday_contrast_price1 ,:comment => "예상체결가전일대비"
      t.decimal :expectation_contract_yesterday_contrast_fluctuation_rate1 ,:comment => "예상체결가전일대비등락율"
      t.integer :lp_offered_quantity1 ,:comment => "LP매도호가수량1"
      t.integer :lp_bid_quantity1 ,:comment => "LP매수호가수량1"
      t.integer :lp_offered_quantity2 ,:comment => "LP매도호가수량2"
      t.integer :lp_bid_quantity2 ,:comment => "LP매수호가수량2"
      t.integer :lp_offered_quantity3 ,:comment => "LP매도호가수량3"
      t.integer :lp_bid_quantity3 ,:comment => "LP매수호가수량3"
      t.integer :lp_offered_quantity4 ,:comment => "LP매도호가수량4"
      t.integer :lp_bid_quantity4 ,:comment => "LP매수호가수량4"
      t.integer :lp_offered_quantity5 ,:comment => "LP매도호가수량5"
      t.integer :lp_bid_quantity5 ,:comment => "LP매수호가수량5"
      t.integer :lp_offered_quantity6 ,:comment => "LP매도호가수량6"
      t.integer :lp_bid_quantity6 ,:comment => "LP매수호가수량6"
      t.integer :lp_offered_quantity7 ,:comment => "LP매도호가수량7"
      t.integer :lp_bid_quantity7 ,:comment => "LP매수호가수량7"
      t.integer :lp_offered_quantity8 ,:comment => "LP매도호가수량8"
      t.integer :lp_bid_quantity8 ,:comment => "LP매수호가수량8"
      t.integer :lp_offered_quantity9 ,:comment => "LP매도호가수량9"
      t.integer :lp_bid_quantity9 ,:comment => "LP매수호가수량9"
      t.integer :lp_offered_quantity10 ,:comment => "LP매도호가수량10"
      t.integer :lp_bid_quantity10 ,:comment => "LP매수호가수량10"
      t.integer :accumulated_trade_quantity ,:comment => "누적거래량"
      t.decimal :expectation_contract_yesterday_contrast_rate ,:comment => "전일거래량대비예상체결률"
      t.integer :market_gubun ,:comment => "장운영구분"
      t.integer :investor_ticker ,:comment => "투자자별ticker"

      t.timestamps null: false
    end
    add_index :realtime_offered_and_bids, [:stock_date, :stock_code ]
  end
end
