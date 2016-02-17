 class CreateOpt10081s < ActiveRecord::Migration
  def change
    create_table :opt10081s ,id: false  do |t|
      t.timestamp :stock_date #일자
      t.string :stock_code, limit:9 #종목코드
      t.integer :current_price    #현재가(종가라고 볼수있음)
      t.integer :trade_quantity   #거래량
      t.integer :trade_price      #거래대금
      t.integer :start_price      #장 시작 금액(시가)
      t.integer :high_price       #고가
      t.integer :low_price        #저가
      t.timestamps null: false
    end
    add_index :opt10081s, [:stock_date, :stock_code] , unique: true

  end
end
