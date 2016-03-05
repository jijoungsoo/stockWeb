json.array!(@realtime_prices) do |realtime_price|
  json.extract! realtime_price, :id, :stock_date, :stock_code, :current_price, :contrast_yesterday, :fluctuation_rate, :offered_price, :bid_price, :accumulated_trade_quantity, :accumulated_trade_price, :start_price, :high_price, :low_price, :contrast_yesterday_symbol, :contrast_yesterday_symbol, :yesterday_contrast_trade_quantity, :trade_amount_variation, :yesterday_contrast_trade_rate, :trade_turnover_ratio, :trade_cost, :total_market_price, :upper_price_limit_time, :lower_price_limit_time
  json.url realtime_price_url(realtime_price, format: :json)
end
