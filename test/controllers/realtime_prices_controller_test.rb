require 'test_helper'

class RealtimePricesControllerTest < ActionController::TestCase
  setup do
    @realtime_price = realtime_prices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:realtime_prices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create realtime_price" do
    assert_difference('RealtimePrice.count') do
      post :create, realtime_price: { accumulated_trade_price: @realtime_price.accumulated_trade_price, accumulated_trade_quantity: @realtime_price.accumulated_trade_quantity, bid_price: @realtime_price.bid_price, contrast_yesterday: @realtime_price.contrast_yesterday, contrast_yesterday_symbol: @realtime_price.contrast_yesterday_symbol, contrast_yesterday_symbol: @realtime_price.contrast_yesterday_symbol, current_price: @realtime_price.current_price, fluctuation_rate: @realtime_price.fluctuation_rate, high_price: @realtime_price.high_price, low_price: @realtime_price.low_price, lower_price_limit_time: @realtime_price.lower_price_limit_time, offered_price: @realtime_price.offered_price, start_price: @realtime_price.start_price, stock_code: @realtime_price.stock_code, stock_date: @realtime_price.stock_date, total_market_price: @realtime_price.total_market_price, trade_amount_variation: @realtime_price.trade_amount_variation, trade_cost: @realtime_price.trade_cost, trade_turnover_ratio: @realtime_price.trade_turnover_ratio, upper_price_limit_time: @realtime_price.upper_price_limit_time, yesterday_contrast_trade_quantity: @realtime_price.yesterday_contrast_trade_quantity, yesterday_contrast_trade_rate: @realtime_price.yesterday_contrast_trade_rate }
    end

    assert_redirected_to realtime_price_path(assigns(:realtime_price))
  end

  test "should show realtime_price" do
    get :show, id: @realtime_price
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @realtime_price
    assert_response :success
  end

  test "should update realtime_price" do
    patch :update, id: @realtime_price, realtime_price: { accumulated_trade_price: @realtime_price.accumulated_trade_price, accumulated_trade_quantity: @realtime_price.accumulated_trade_quantity, bid_price: @realtime_price.bid_price, contrast_yesterday: @realtime_price.contrast_yesterday, contrast_yesterday_symbol: @realtime_price.contrast_yesterday_symbol, contrast_yesterday_symbol: @realtime_price.contrast_yesterday_symbol, current_price: @realtime_price.current_price, fluctuation_rate: @realtime_price.fluctuation_rate, high_price: @realtime_price.high_price, low_price: @realtime_price.low_price, lower_price_limit_time: @realtime_price.lower_price_limit_time, offered_price: @realtime_price.offered_price, start_price: @realtime_price.start_price, stock_code: @realtime_price.stock_code, stock_date: @realtime_price.stock_date, total_market_price: @realtime_price.total_market_price, trade_amount_variation: @realtime_price.trade_amount_variation, trade_cost: @realtime_price.trade_cost, trade_turnover_ratio: @realtime_price.trade_turnover_ratio, upper_price_limit_time: @realtime_price.upper_price_limit_time, yesterday_contrast_trade_quantity: @realtime_price.yesterday_contrast_trade_quantity, yesterday_contrast_trade_rate: @realtime_price.yesterday_contrast_trade_rate }
    assert_redirected_to realtime_price_path(assigns(:realtime_price))
  end

  test "should destroy realtime_price" do
    assert_difference('RealtimePrice.count', -1) do
      delete :destroy, id: @realtime_price
    end

    assert_redirected_to realtime_prices_path
  end
end
