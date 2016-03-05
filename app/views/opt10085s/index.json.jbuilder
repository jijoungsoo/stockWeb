json.array!(@opt10085s) do |opt10085|
  json.extract! opt10085, :id, :date_of_purchase, :, :account_number, :stock_code, :stock_name, :purchase_price, :, :total_amount_of_purchase, :possession_quantity, :today_sell_profit_and_loss, :today_commission, :today_tax, :credit_gubun, :loan_date, :payment_balance, :sellable_quantity, :credit_amount, :credit_interest, :expiration_date, :valuation_profit_and_loss, :earnings_rate, :,, :precision, :scale, :evaluated_price, :commission, :selling_commission, :buying_commission, :selling_tax, :will_profit_price, :not_commission_profit_and_loss, :not_commission_profit_and_loss_rate, :,, :precision, :scale
  json.url opt10085_url(opt10085, format: :json)
end
