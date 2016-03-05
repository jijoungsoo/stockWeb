require 'test_helper'

class Opt10014sControllerTest < ActionController::TestCase
  setup do
    @opt10014 = opt10014s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opt10014s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create opt10014" do
    assert_difference('Opt10014.count') do
      post :create, opt10014: { contrast_symbol: @opt10014.contrast_symbol, contrast_yesterday: @opt10014.contrast_yesterday, current_price: @opt10014.current_price, fluctuation_rate: @opt10014.fluctuation_rate, short_selling_average_price: @opt10014.short_selling_average_price, short_selling_quantity: @opt10014.short_selling_quantity, short_selling_trade_price: @opt10014.short_selling_trade_price, stock_code: @opt10014.stock_code, stock_date: @opt10014.stock_date, trade_quantity: @opt10014.trade_quantity, trade_rate: @opt10014.trade_rate }
    end

    assert_redirected_to opt10014_path(assigns(:opt10014))
  end

  test "should show opt10014" do
    get :show, id: @opt10014
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @opt10014
    assert_response :success
  end

  test "should update opt10014" do
    patch :update, id: @opt10014, opt10014: { contrast_symbol: @opt10014.contrast_symbol, contrast_yesterday: @opt10014.contrast_yesterday, current_price: @opt10014.current_price, fluctuation_rate: @opt10014.fluctuation_rate, short_selling_average_price: @opt10014.short_selling_average_price, short_selling_quantity: @opt10014.short_selling_quantity, short_selling_trade_price: @opt10014.short_selling_trade_price, stock_code: @opt10014.stock_code, stock_date: @opt10014.stock_date, trade_quantity: @opt10014.trade_quantity, trade_rate: @opt10014.trade_rate }
    assert_redirected_to opt10014_path(assigns(:opt10014))
  end

  test "should destroy opt10014" do
    assert_difference('Opt10014.count', -1) do
      delete :destroy, id: @opt10014
    end

    assert_redirected_to opt10014s_path
  end
end
