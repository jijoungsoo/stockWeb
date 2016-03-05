json.array!(@realtime_contracts) do |realtime_contract|
  json.extract! realtime_contract, :id, :stock_date, :stock_code, :current_price, :contrast_yesterday, :fluctuation_rate, :offered_price, :bid_price, :trade_quantity, :accumulated_trade_quantity, :accumulated_trade_price, :start_price, :high_price, :low_price, :contrast_yesterday_symbol, :yesterday_contrast_trade_quantity, :trade_amount_variation, :yesterday_contrast_trade_rate, :trade_turnover_ratio, :trade_cost, :contract_strength, :total_market_price, :arket_gubun, :ko_accessibility_rate, :upper_price_limit_time, :lower_price_limit_time
  json.url realtime_contract_url(realtime_contract, format: :json)
end
