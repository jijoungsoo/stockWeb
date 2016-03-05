require 'test_helper'

class Opt10080sControllerTest < ActionController::TestCase
  setup do
    @opt10080 = opt10080s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opt10080s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create opt10080" do
    assert_difference('Opt10080.count') do
      post :create, opt10080: { ,: @opt10080.,, big_type_of_business: @opt10080.big_type_of_business, contract_time: @opt10080.contract_time, current_price: @opt10080.current_price, high_price: @opt10080.high_price, low_price: @opt10080.low_price, modify_rate: @opt10080.modify_rate, modify_stock_event: @opt10080.modify_stock_event, modify_stock_gubun: @opt10080.modify_stock_gubun, precision: @opt10080.precision, scale: @opt10080.scale, small_type_of_business: @opt10080.small_type_of_business, start_price: @opt10080.start_price, stock_code: @opt10080.stock_code, stock_info: @opt10080.stock_info, trade_quantity: @opt10080.trade_quantity, yesterday_current_price: @opt10080.yesterday_current_price }
    end

    assert_redirected_to opt10080_path(assigns(:opt10080))
  end

  test "should show opt10080" do
    get :show, id: @opt10080
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @opt10080
    assert_response :success
  end

  test "should update opt10080" do
    patch :update, id: @opt10080, opt10080: { ,: @opt10080.,, big_type_of_business: @opt10080.big_type_of_business, contract_time: @opt10080.contract_time, current_price: @opt10080.current_price, high_price: @opt10080.high_price, low_price: @opt10080.low_price, modify_rate: @opt10080.modify_rate, modify_stock_event: @opt10080.modify_stock_event, modify_stock_gubun: @opt10080.modify_stock_gubun, precision: @opt10080.precision, scale: @opt10080.scale, small_type_of_business: @opt10080.small_type_of_business, start_price: @opt10080.start_price, stock_code: @opt10080.stock_code, stock_info: @opt10080.stock_info, trade_quantity: @opt10080.trade_quantity, yesterday_current_price: @opt10080.yesterday_current_price }
    assert_redirected_to opt10080_path(assigns(:opt10080))
  end

  test "should destroy opt10080" do
    assert_difference('Opt10080.count', -1) do
      delete :destroy, id: @opt10080
    end

    assert_redirected_to opt10080s_path
  end
end
