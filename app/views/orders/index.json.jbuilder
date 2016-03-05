json.array!(@orders) do |order|
  json.extract! order, :id, :contract_time, :account_number, :order_number, :manager_number, :stock_code, :order_business_classification, :order_status, :stock_name, :order_quantity, :order_price, :not_contract_quantity, :contract_total_amount, :last_order_number, :order_gubun, :trade_gubun, :order_type, :contract_number, :contract_price, :current_price, :sell_price, :buy_price, :contract_price_unit, :contract_price_quantity, :today_commission, :today_tax
  json.url order_url(order, format: :json)
end
