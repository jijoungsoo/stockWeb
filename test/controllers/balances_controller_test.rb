require 'test_helper'

class BalancesControllerTest < ActionController::TestCase
  setup do
    @balance = balances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:balances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create balance" do
    assert_difference('Balance.count') do
      post :create, balance: { account_number: @balance.account_number, bid_price: @balance.bid_price, contract_time: @balance.contract_time, deposit: @balance.deposit, not_commission_profit_and_loss_rate: @balance.not_commission_profit_and_loss_rate, offered_price: @balance.offered_price, order_possible_quantity: @balance.order_possible_quantity, order_type: @balance.order_type, possession_quantity: @balance.possession_quantity, purchase_price: @balance.purchase_price, stock_code: @balance.stock_code, stock_option_trade_unit: @balance.stock_option_trade_unit, today_net_buy_quantity: @balance.today_net_buy_quantity, today_sell_profit_and_loss: @balance.today_sell_profit_and_loss, total_amount_of_purchase: @balance.total_amount_of_purchase, yesterday_current_price: @balance.yesterday_current_price }
    end

    assert_redirected_to balance_path(assigns(:balance))
  end

  test "should show balance" do
    get :show, id: @balance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @balance
    assert_response :success
  end

  test "should update balance" do
    patch :update, id: @balance, balance: { account_number: @balance.account_number, bid_price: @balance.bid_price, contract_time: @balance.contract_time, deposit: @balance.deposit, not_commission_profit_and_loss_rate: @balance.not_commission_profit_and_loss_rate, offered_price: @balance.offered_price, order_possible_quantity: @balance.order_possible_quantity, order_type: @balance.order_type, possession_quantity: @balance.possession_quantity, purchase_price: @balance.purchase_price, stock_code: @balance.stock_code, stock_option_trade_unit: @balance.stock_option_trade_unit, today_net_buy_quantity: @balance.today_net_buy_quantity, today_sell_profit_and_loss: @balance.today_sell_profit_and_loss, total_amount_of_purchase: @balance.total_amount_of_purchase, yesterday_current_price: @balance.yesterday_current_price }
    assert_redirected_to balance_path(assigns(:balance))
  end

  test "should destroy balance" do
    assert_difference('Balance.count', -1) do
      delete :destroy, id: @balance
    end

    assert_redirected_to balances_path
  end
end
