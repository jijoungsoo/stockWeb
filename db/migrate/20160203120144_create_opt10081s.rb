 class CreateOpt10081s < ActiveRecord::Migration
  def change
    create_table :opt10081s ,id: false  ,:comment => "주식일봉차트테이블"  do |t|
      t.timestamp :stock_date ,:comment => "일자"
      t.string :stock_code, limit:9 ,:comment => "종목코드"
      t.integer :current_price    ,:comment => "현재가"
      t.integer :trade_quantity   ,:comment => "거래량"
      t.integer :trade_price  ,:comment => "거래대금"
      t.integer :start_price   ,:comment => "장 시작 금액(시가)"  
      t.integer :high_price    ,:comment => "고가" 
      t.integer :low_price      ,:comment => "저가"
      t.timestamps null: false
    end
    add_index :opt10081s, [:stock_date, :stock_code] , unique: true

  end
end
