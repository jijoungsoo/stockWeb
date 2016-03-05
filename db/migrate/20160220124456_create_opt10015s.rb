class CreateOpt10015s < ActiveRecord::Migration
  def change
    create_table :opt10015s, id:false , :comment => "일별거래상세요청"  do |t|
      t.timestamp :stock_date	,:comment => "일자"
      t.string :stock_code, limit: 9 ,:comment => "종목코드"
      t.integer :current_price ,:comment => "현재가(종가)"
      t.integer :contrast_yesterday_symbol ,:comment => "전일대비기호"
      t.integer :contrast_yesterday ,:comment => "전일대비"
      t.decimal :fluctuation_rate, precision: 5, scale: 2 ,:comment => "등락율"
      t.integer :trade_quantity ,:comment => "거래량"
      t.integer :trade_price, :comment => "거래대금"
      t.integer :before_market_trade_quantity , :comment => "장전거래량" 
      t.decimal :before_market_trade_rate, precision: 5, scale: 2 , :comment => "장전거래비중"
      t.integer :market_trade_quantity , :comment => "장중거래량"
      t.decimal :market_trade_rate, precision: 5, scale: 2 , :comment => "장중거래비중"
      t.integer :after_market_trade_quantity , :comment => "장후거래량"
      t.integer :after_market_trade_rate , :comment => "장후거래비중"
      t.integer :sum3 , :comment => "합계3"
      t.integer :between_trade_quantity , :comment => "기간중거래량"

      t.timestamps null: false
    end
    add_index :opt10015s, [:stock_date, :stock_code] , unique: true

  end
end

