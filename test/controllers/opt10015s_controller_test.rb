require 'test_helper'

class Opt10015sControllerTest < ActionController::TestCase
  setup do
    @opt10015 = opt10015s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opt10015s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create opt10015" do
    assert_difference('Opt10015.count') do
      post :create, opt10015: { after_market_trade_quantity: @opt10015.after_market_trade_quantity, after_market_trade_rate: @opt10015.after_market_trade_rate, before_market_trade_quantity: @opt10015.before_market_trade_quantity, before_market_trade_rate: @opt10015.before_market_trade_rate, between_trade_quantity: @opt10015.between_trade_quantity, contrast_symbol: @opt10015.contrast_symbol, contrast_yesterday: @opt10015.contrast_yesterday, current_price: @opt10015.current_price, fluctuation_rate: @opt10015.fluctuation_rate, market_trade_quantity: @opt10015.market_trade_quantity, market_trade_rate: @opt10015.market_trade_rate, stock_code: @opt10015.stock_code, stock_date: @opt10015.stock_date, sum3: @opt10015.sum3, trade_price: @opt10015.trade_price, trade_quantity: @opt10015.trade_quantity }
    end

    assert_redirected_to opt10015_path(assigns(:opt10015))
  end

  test "should show opt10015" do
    get :show, id: @opt10015
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @opt10015
    assert_response :success
  end

  test "should update opt10015" do
    patch :update, id: @opt10015, opt10015: { after_market_trade_quantity: @opt10015.after_market_trade_quantity, after_market_trade_rate: @opt10015.after_market_trade_rate, before_market_trade_quantity: @opt10015.before_market_trade_quantity, before_market_trade_rate: @opt10015.before_market_trade_rate, between_trade_quantity: @opt10015.between_trade_quantity, contrast_symbol: @opt10015.contrast_symbol, contrast_yesterday: @opt10015.contrast_yesterday, current_price: @opt10015.current_price, fluctuation_rate: @opt10015.fluctuation_rate, market_trade_quantity: @opt10015.market_trade_quantity, market_trade_rate: @opt10015.market_trade_rate, stock_code: @opt10015.stock_code, stock_date: @opt10015.stock_date, sum3: @opt10015.sum3, trade_price: @opt10015.trade_price, trade_quantity: @opt10015.trade_quantity }
    assert_redirected_to opt10015_path(assigns(:opt10015))
  end

  test "should destroy opt10015" do
    assert_difference('Opt10015.count', -1) do
      delete :destroy, id: @opt10015
    end

    assert_redirected_to opt10015s_path
  end
end
