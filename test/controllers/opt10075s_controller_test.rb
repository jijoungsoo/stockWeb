require 'test_helper'

class Opt10075sControllerTest < ActionController::TestCase
  setup do
    @opt10075 = opt10075s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opt10075s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create opt10075" do
    assert_difference('Opt10075.count') do
      post :create, opt10075: { bid_price: @opt10075.bid_price, business_gubun: @opt10075.business_gubun, contract_number: @opt10075.contract_number, contract_price: @opt10075.contract_price, contract_price_quantity: @opt10075.contract_price_quantity, contract_price_unit: @opt10075.contract_price_unit, contract_quantity: @opt10075.contract_quantity, contract_time: @opt10075.contract_time, contract_total_amount: @opt10075.contract_total_amount, current_price: @opt10075.current_price, domestic_investor: @opt10075.domestic_investor, last_order_number: @opt10075.last_order_number, manager_number: @opt10075.manager_number, not_contract_quantity: @opt10075.not_contract_quantity, offered_price: @opt10075.offered_price, order_gubun: @opt10075.order_gubun, order_number: @opt10075.order_number, order_price: @opt10075.order_price, order_quantity: @opt10075.order_quantity, order_status: @opt10075.order_status, stock_code: @opt10075.stock_code, stock_name: @opt10075.stock_name, today_commission: @opt10075.today_commission, today_tax: @opt10075.today_tax, trade_gubun: @opt10075.trade_gubun }
    end

    assert_redirected_to opt10075_path(assigns(:opt10075))
  end

  test "should show opt10075" do
    get :show, id: @opt10075
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @opt10075
    assert_response :success
  end

  test "should update opt10075" do
    patch :update, id: @opt10075, opt10075: { bid_price: @opt10075.bid_price, business_gubun: @opt10075.business_gubun, contract_number: @opt10075.contract_number, contract_price: @opt10075.contract_price, contract_price_quantity: @opt10075.contract_price_quantity, contract_price_unit: @opt10075.contract_price_unit, contract_quantity: @opt10075.contract_quantity, contract_time: @opt10075.contract_time, contract_total_amount: @opt10075.contract_total_amount, current_price: @opt10075.current_price, domestic_investor: @opt10075.domestic_investor, last_order_number: @opt10075.last_order_number, manager_number: @opt10075.manager_number, not_contract_quantity: @opt10075.not_contract_quantity, offered_price: @opt10075.offered_price, order_gubun: @opt10075.order_gubun, order_number: @opt10075.order_number, order_price: @opt10075.order_price, order_quantity: @opt10075.order_quantity, order_status: @opt10075.order_status, stock_code: @opt10075.stock_code, stock_name: @opt10075.stock_name, today_commission: @opt10075.today_commission, today_tax: @opt10075.today_tax, trade_gubun: @opt10075.trade_gubun }
    assert_redirected_to opt10075_path(assigns(:opt10075))
  end

  test "should destroy opt10075" do
    assert_difference('Opt10075.count', -1) do
      delete :destroy, id: @opt10075
    end

    assert_redirected_to opt10075s_path
  end
end
