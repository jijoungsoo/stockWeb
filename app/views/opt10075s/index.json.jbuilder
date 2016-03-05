json.array!(@opt10075s) do |opt10075|
  json.extract! opt10075, :id, :contract_time, :order_number, :manager_number, :stock_code, :business_gubun, :order_status, :stock_name, :order_quantity, :order_price, :not_contract_quantity, :contract_total_amount, :last_order_number, :order_gubun, :trade_gubun, :contract_number, :contract_price, :contract_quantity, :current_price, :offered_price, :bid_price, :contract_price_unit, :contract_price_quantity, :today_commission, :today_tax, :domestic_investor
  json.url opt10075_url(opt10075, format: :json)
end
