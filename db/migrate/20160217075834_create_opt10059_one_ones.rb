class CreateOpt10059OneOnes < ActiveRecord::Migration
  def change
    create_table :opt10059_one_ones, id: false ,:comment => "종목별투자자기관별요청"  do |t|
      t.timestamp :stock_date ,:comment => "일자"
      t.string :stock_code, limit:9  ,:comment => "종목코드"
      t.integer :current_price ,:comment => "현재가"
      t.integer :contrast_symbol ,:comment => "대비기호"
      t.integer :contrast_yesterday ,:comment => "전일대비"
      t.decimal :fluctuation_rate, precision:5, scale:2 ,:comment => "등락율"
      t.integer :accumulated_trade_price ,:comment => "누적거래대금"
      t.integer :domestic_investor ,:comment => "개인투자자"
      t.integer :foreign_investor ,:comment => "외국인투자자"
      t.integer :institution ,:comment => "기관계"
      t.integer :financial_investment  ,:comment => "금융투자"
      t.integer :insurance  ,:comment => "보험"
      t.integer :investment_trust ,:comment => "투신"
      t.integer :etc_financial  ,:comment => "기타금융"
      t.integer :bank  ,:comment => "은행"
      t.integer :pension_fund  ,:comment => "연기금등"
      t.integer :private_equity_fund ,:comment => "사모펀드"
      t.integer :nation ,:comment => "국가"
      t.integer :etc_corporation  ,:comment => "기타법인"
      t.integer :foregin_investment_in_korea  ,:comment => "내외국인"
      t.integer :buyOrSell  ,:comment => "매수또는매도"
      t.integer :priceOrAmount ,:comment => "금액또는거래량"

      t.timestamps null: false
    end
    add_index :opt10059_one_ones, [:stock_date, :stock_code] , unique: true


  end
end
