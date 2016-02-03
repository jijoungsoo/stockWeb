json.array!(@markets) do |market|
  json.extract! market, :id, :market_id, :market_name
  json.url market_url(market, format: :json)
end
