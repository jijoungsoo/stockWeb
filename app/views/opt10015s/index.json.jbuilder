json.array!(@opt10015s) do |opt10015|
  json.extract! opt10015, :id, :stock_date, :stock_code, :current_price, :contrast_symbol, :contrast_yesterday, :fluctuation_rate, :trade_quantity, :trade_price, :before_market_trade_quantity, :before_market_trade_rate, :market_trade_quantity, :market_trade_rate, :after_market_trade_quantity, :after_market_trade_rate, :sum3, :between_trade_quantity
  json.url opt10015_url(opt10015, format: :json)
end
