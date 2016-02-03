json.array!(@stocks) do |stock|
  json.extract! stock, :id, :stock_code, :market, :stock_name, :stock_open_date
  json.url stock_url(stock, format: :json)
end
