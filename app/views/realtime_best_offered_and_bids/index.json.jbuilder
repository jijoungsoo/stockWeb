json.array!(@realtime_best_offered_and_bids) do |realtime_best_offered_and_bid|
  json.extract! realtime_best_offered_and_bid, :id, :stock_date, :stock_code, :offered_price, :bid_price
  json.url realtime_best_offered_and_bid_url(realtime_best_offered_and_bid, format: :json)
end
