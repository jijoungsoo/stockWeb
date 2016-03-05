json.array!(@balances) do |balance|
  json.extract! balance, :id, :contract_time, :account_number, :stock_code, :possession_quantity, :purchase_price, :total_amount_of_purchase, :order_possible_quantity, :today_net_buy_quantity, :order_type, :today_sell_profit_and_loss, :deposit, :offered_price, :bid_price, :yesterday_current_price, :not_commission_profit_and_loss_rate, :stock_option_trade_unit
  json.url balance_url(balance, format: :json)
end
