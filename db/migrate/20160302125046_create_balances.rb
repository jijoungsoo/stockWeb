class CreateBalances < ActiveRecord::Migration
  def change
    create_table :balances  ,:comment => "잔고" do |t|
      t.timestamp :reg_time ,:comment => "기록시간"
      t.string :account_number, limit: 10  ,:comment => "계좌번호"
      t.string :stock_code, limit: 9 ,:comment => "종목코드, 업종코드"
      t.integer :current_price ,:comment => "현재가, 체결가, 실시간종가"
      t.integer :possession_quantity ,:comment => "보유수량"
      t.integer :purchase_price ,:comment => "매입단가"
      t.integer :total_amount_of_purchase ,:comment => "총매입가"
      t.integer :order_possible_quantity ,:comment => "주문가능수량"
      t.integer :today_net_buy_quantity ,:comment => "당일순매수량"
      t.integer :order_type ,:comment => "매도 / 매수구분"
      t.integer :today_sell_profit_and_loss ,:comment => "당일 총 매도 손익"
      t.integer :deposit ,:comment => "예수금"
      t.integer :offered_price ,:comment => "(최우선)매도호가"
      t.integer :bid_price ,:comment => "(최우선)매수호가"
      t.integer :yesterday_current_price ,:comment  => "기준가(어제종가)"
      t.decimal :not_commission_profit_and_loss_rate , precision:5, scale:2  ,:comment  => "손익율"
      t.string :stock_option_trade_unit, limit: 10 ,:comment  => "주식옵션거래단위"

      t.timestamps null: false
    end
    add_index :balances, [:reg_time]
  end
end
