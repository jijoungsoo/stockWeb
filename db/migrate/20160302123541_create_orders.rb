class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders ,:comment => "주문접수" do |t|
      t.timestamp :contract_time ,:comment => "주문/체결시간"
      t.string :account_number, limit: 10 ,:comment => "계좌번호"
      t.string :order_number, limit: 10 ,:comment => "주문번호"
      t.string :manager_number, limit: 7 ,:comment => "관리자사번"
      t.string :stock_code, limit: 9 ,:comment => "종목코드, 업종코드"
      t.string :order_business_classification, limit: 9 ,:comment => "주문업무분류"
      t.string :order_status, limit: 10 ,:comment => "주문상태"
      t.string :stock_name, limit: 50 ,:comment => "종목명"
      t.integer :order_quantity ,:comment => "주문수량"
      t.integer :order_price ,:comment => "주문가격"
      t.integer :not_contract_quantity ,:comment => "미체결수량"
      t.integer :contract_total_amount ,:comment => "체결누계금액"
      t.string :last_order_number, limit: 10 ,:comment => "원주문번호"
      t.string :order_gubun, limit: 10 ,:comment => "주문구분(+현금내수, -현금매도…)"
      t.string :trade_gubun, limit: 10 ,:comment => "매매구분(보통, 시장가…)"
      t.integer :order_type ,:comment => "매도수구분(1:매도, 2:매수)"
      t.string :contract_number , limit: 10  ,:comment => "체결번호"
      t.integer :contract_price ,:comment => "체결가"
      t.integer :contract_quantity  ,:comment => "체결량"
      t.integer :current_price ,:comment => "현재가, 체결가, 실시간종가"
      t.integer :offered_price ,:comment => "(최우선)매도호가"
      t.integer :bid_price ,:comment => "(최우선)매수호가"
      t.integer :contract_price_unit ,:comment => "단위체결가"
      t.integer :contract_price_quantity ,:comment => "단위체결량"
      t.integer :today_commission ,:comment => "당일매매수수료"
      t.integer :today_tax ,:comment => "당일매매세금"

      t.timestamps null: false
    end
    add_index :orders, [:order_number]
    add_index :orders, [:stock_code]
  end
end
