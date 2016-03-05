json.array!(@opt10080s) do |opt10080|
  json.extract! opt10080, :id, :stock_code, :current_price, :trade_quantity, :contract_time, :start_price, :high_price, :low_price, :modify_stock_gubun, :modify_rate, :,, :precision, :scale, :big_type_of_business, :small_type_of_business, :stock_info, :modify_stock_event, :yesterday_current_price
  json.url opt10080_url(opt10080, format: :json)
end
