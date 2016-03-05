require 'test_helper'

class RealtimeContractsControllerTest < ActionController::TestCase
  setup do
    @realtime_contract = realtime_contracts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:realtime_contracts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create realtime_contract" do
    assert_difference('RealtimeContract.count') do
      post :create, realtime_contract: { accumulated_trade_price: @realtime_contract.accumulated_trade_price, accumulated_trade_quantity: @realtime_contract.accumulated_trade_quantity, arket_gubun: @realtime_contract.arket_gubun, bid_price: @realtime_contract.bid_price, contract_strength: @realtime_contract.contract_strength, contrast_yesterday: @realtime_contract.contrast_yesterday, contrast_yesterday_symbol: @realtime_contract.contrast_yesterday_symbol, current_price: @realtime_contract.current_price, fluctuation_rate: @realtime_contract.fluctuation_rate, high_price: @realtime_contract.high_price, ko_accessibility_rate: @realtime_contract.ko_accessibility_rate, low_price: @realtime_contract.low_price, lower_price_limit_time: @realtime_contract.lower_price_limit_time, offered_price: @realtime_contract.offered_price, start_price: @realtime_contract.start_price, stock_code: @realtime_contract.stock_code, stock_date: @realtime_contract.stock_date, total_market_price: @realtime_contract.total_market_price, trade_amount_variation: @realtime_contract.trade_amount_variation, trade_cost: @realtime_contract.trade_cost, trade_quantity: @realtime_contract.trade_quantity, trade_turnover_ratio: @realtime_contract.trade_turnover_ratio, upper_price_limit_time: @realtime_contract.upper_price_limit_time, yesterday_contrast_trade_quantity: @realtime_contract.yesterday_contrast_trade_quantity, yesterday_contrast_trade_rate: @realtime_contract.yesterday_contrast_trade_rate }
    end

    assert_redirected_to realtime_contract_path(assigns(:realtime_contract))
  end

  test "should show realtime_contract" do
    get :show, id: @realtime_contract
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @realtime_contract
    assert_response :success
  end

  test "should update realtime_contract" do
    patch :update, id: @realtime_contract, realtime_contract: { accumulated_trade_price: @realtime_contract.accumulated_trade_price, accumulated_trade_quantity: @realtime_contract.accumulated_trade_quantity, arket_gubun: @realtime_contract.arket_gubun, bid_price: @realtime_contract.bid_price, contract_strength: @realtime_contract.contract_strength, contrast_yesterday: @realtime_contract.contrast_yesterday, contrast_yesterday_symbol: @realtime_contract.contrast_yesterday_symbol, current_price: @realtime_contract.current_price, fluctuation_rate: @realtime_contract.fluctuation_rate, high_price: @realtime_contract.high_price, ko_accessibility_rate: @realtime_contract.ko_accessibility_rate, low_price: @realtime_contract.low_price, lower_price_limit_time: @realtime_contract.lower_price_limit_time, offered_price: @realtime_contract.offered_price, start_price: @realtime_contract.start_price, stock_code: @realtime_contract.stock_code, stock_date: @realtime_contract.stock_date, total_market_price: @realtime_contract.total_market_price, trade_amount_variation: @realtime_contract.trade_amount_variation, trade_cost: @realtime_contract.trade_cost, trade_quantity: @realtime_contract.trade_quantity, trade_turnover_ratio: @realtime_contract.trade_turnover_ratio, upper_price_limit_time: @realtime_contract.upper_price_limit_time, yesterday_contrast_trade_quantity: @realtime_contract.yesterday_contrast_trade_quantity, yesterday_contrast_trade_rate: @realtime_contract.yesterday_contrast_trade_rate }
    assert_redirected_to realtime_contract_path(assigns(:realtime_contract))
  end

  test "should destroy realtime_contract" do
    assert_difference('RealtimeContract.count', -1) do
      delete :destroy, id: @realtime_contract
    end

    assert_redirected_to realtime_contracts_path
  end
end
