class CreateOpt10014s < ActiveRecord::Migration
  def change
    create_table :opt10014s, id: false , :comment => "공매도추이요청" do |t|
      t.timestamp :stock_date ,:comment => "일자"
      t.string :stock_code, limit: 9 ,:comment => "종목코드"
      t.integer :current_price ,:comment => "종가"
      t.integer :contrast_yesterday_symbol  ,:comment => "전일대비기호"
      t.integer :contrast_yesterday ,:comment => "전일대비"
      t.decimal :fluctuation_rate, precision: 5, scale: 2 ,:comment => "등락율"
      t.integer :trade_quantity ,:comment => "거래량"
      t.integer :short_selling_quantity  ,:comment => "공매도량"
      t.decimal :trade_rate, precision: 5, scale: 2 ,:comment => "매매비중"
      t.integer :short_selling_trade_price  ,:comment => "공매도거래대금"
      t.integer :short_selling_average_price ,:comment => "공매도평균가"

      t.timestamps null: false
    end
    add_index :opt10014s, [:stock_date, :stock_code] , unique: true

  end
end
