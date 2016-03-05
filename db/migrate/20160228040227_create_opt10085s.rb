class CreateOpt10085s < ActiveRecord::Migration
  def change
    create_table :opt10085s , id:false ,:comment => "계좌수익률요청"  do |t|
      t.timestamp :date_of_purchase  ,:comment => "구매일자"
      t.string :account_number, limit: 10  ,:comment => "계좌번호"
      t.string :stock_code, limit: 9  ,:comment => "종목코드"
      t.string :stock_name, limit: 20  ,:comment => "종목이름"
      t.integer :current_price  ,:comment => "현재가"
      t.integer :purchase_price  ,:comment => "매입가"
      t.integer :total_amount_of_purchase ,:comment => "매입금액"
      t.integer :possession_quantity ,:comment => "보유수량"
      t.integer :today_sell_profit_and_loss ,:comment => "당일매도손익"
      t.integer :today_commission ,:comment => "당일매매수수료"
      t.integer :today_tax ,:comment => "당일매매세금"
      t.string :credit_gubun, limit: 2 ,:comment => "신용구분"
      t.string :loan_date, limit: 8 ,:comment => "대출일"
      t.integer :payment_balance ,:comment => "결제잔고"
      t.integer :sellable_quantity ,:comment => "청산가능수량"
      t.integer :credit_amount ,:comment => "신용금액"
      t.integer :credit_interest ,:comment => "신용이자"
      t.string :expiration_date, limit: 8 ,:comment => "만기일"
      t.integer :valuation_profit_and_loss ,:comment => "평가손익"
      t.decimal :earnings_rate, precision: 5, scale: 2 ,:comment => "수익률"
      t.integer :evaluated_price ,:comment => "평가금액"
      t.integer :commission ,:comment => "수수료"
      t.integer :buying_commission ,:comment => "매입수수료"
      t.integer :selling_commission ,:comment => "매도수수료"
      t.integer :selling_tax ,:comment => "매도세금"
      t.integer :will_profit_price ,:comment => "손익분기매입가"
      t.integer :not_commission_profit_and_loss ,:comment => "손익금액"
      t.decimal :not_commission_profit_and_loss_rate, precision: 5, scale: 2  ,:comment => "손익율"
      t.integer :order_status ,:comment => "주문상태 1 <=보유,2<=매도중,3<=매도완료"

      t.timestamps null: false
    end
    add_index :opt10085s, [:date_of_purchase, :account_number, :stock_code ] , unique: true ,name: 'index_opt10085s_on_date_of_purchase_and'
  end
end
