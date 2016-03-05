json.array!(@opt10059_one_twos) do |opt10059_one_two|
  json.extract! opt10059_one_two, :id, :stock_date, :stock_code, :current_price, :contrast_symbol, :contrast_yesterday, :fluctuation_rate, :accumulated_trade_price, :domestic_investor, :foreign_investor, :institution, :financial_investment, :insurance, :investment_trust, :etc_financial, :bank, :pension_fund, :private_equity_fund, :nation, :etc_corporation, :foregin_investment_in_korea, :buyOrSell, :priceOrAmount
  json.url opt10059_one_two_url(opt10059_one_two, format: :json)
end
