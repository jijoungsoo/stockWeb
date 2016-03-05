class CreateQpw00004s < ActiveRecord::Migration
  def change
    create_table :qpw00004s,id:false do |t|
      t.timestamp :stock_date
      t.string :account_name, limit:12 #계좌명
      t.string :place_name,limit:12 #지점명
      t.integer :deposit #예수금
      t.integer :twodays_after_deposit #D+2추정예수금
      t.integer :stock_evaluation #유가잔고평가액
      t.integer :stock_balance_evaluation #예탁자산평가액
      t.integer :total_amount_of_purchase #총매입금액
      t.integer :estimation_deposit     #추정예탁자산
      t.integer :stock_collacteral_loan #매도담보대출금
      t.integer :today_investment_money #당일투자원금
      t.integer :this_month_investment_money  #당월투자원금
      t.integer :accumulative_investment_money #누적투자원금
      t.integer :today_profit_and_loss #당일투자손익
      t.integer :this_month_profit_and_loss #당월투자손익
      t.integer :accumulative_profit_and_loss #누적투자손익
      t.integer :today_profit_and_loss_rate #당일손익율
      t.integer :this_month_profit_and_loss_rate #당월손익율
      t.integer :accumulative_profit_and_loss_rate #누적손익율
      t.integer :print_count #출력건수

      t.timestamps null: false
    end
  end
end
