json.array!(@ordereds) do |ordered|
  json.extract! ordered, :id, :contract_time, :account_number, :order_number, :manager_number, :stock_code, :order_business_classification, :order_status, :stock_name, :order_quantity, :order_price, :not_contract_quantity, :contract_total_amount, :last_order_number, :order_gubun, :trade_gubun, :order_type, :contract_number, :contract_price, :current_price, :offered_price, :bid_price, :contract_price_unit, :contract_price_quantity, :today_trade_commission, :today_tax
  json.url ordered_url(ordered, format: :json)
end
