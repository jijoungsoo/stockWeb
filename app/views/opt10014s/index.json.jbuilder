json.array!(@opt10014s) do |opt10014|
  json.extract! opt10014, :id, :stock_date, :stock_code, :current_price, :contrast_symbol, :contrast_yesterday, :fluctuation_rate, :trade_quantity, :short_selling_quantity, :trade_rate, :short_selling_trade_price, :short_selling_average_price
  json.url opt10014_url(opt10014, format: :json)
end
