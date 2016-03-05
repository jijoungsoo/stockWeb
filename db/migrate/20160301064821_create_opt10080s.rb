class CreateOpt10080s < ActiveRecord::Migration
  def change
    create_table :opt10080s , id:false ,:comment => "주식분봉차트조회요청"  do |t|
      t.string :stock_code, limit: 9 ,:comment => "종목코드"
      t.integer :current_price ,:comment => "현재가"
      t.integer :trade_quantity ,:comment => "거래량"
      t.timestamp :contract_time ,:comment => "체결시간"
      t.integer :start_price  ,:comment => "시가"
      t.integer :high_price ,:comment => "고가"
      t.integer :low_price ,:comment => "저가"
      t.integer :modify_stock_gubun ,:comment => "수정주가구분"
      t.decimal :modify_rate, precision: 5 , scale: 2  ,:comment => "수정비율"
      t.integer :big_type_of_business  ,:comment => "대업종구분"
      t.integer :small_type_of_business ,:comment => "소업종구분"
      t.integer :stock_info ,:comment => "종목정보"
      t.integer :modify_stock_event ,:comment => "수정주가이벤트"
      t.integer :yesterday_current_price ,:comment => "전일종가"

      t.timestamps null: false
    end
    add_index :opt10080s, [:contract_time, :stock_code] , unique: true
  end
end
