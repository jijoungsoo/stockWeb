require 'test_helper'

class OrderedsControllerTest < ActionController::TestCase
  setup do
    @ordered = ordereds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ordereds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ordered" do
    assert_difference('Ordered.count') do
      post :create, ordered: { account_number: @ordered.account_number, bid_price: @ordered.bid_price, contract_number: @ordered.contract_number, contract_price: @ordered.contract_price, contract_price_quantity: @ordered.contract_price_quantity, contract_price_unit: @ordered.contract_price_unit, contract_time: @ordered.contract_time, contract_total_amount: @ordered.contract_total_amount, current_price: @ordered.current_price, last_order_number: @ordered.last_order_number, manager_number: @ordered.manager_number, not_contract_quantity: @ordered.not_contract_quantity, offered_price: @ordered.offered_price, order_business_classification: @ordered.order_business_classification, order_gubun: @ordered.order_gubun, order_number: @ordered.order_number, order_price: @ordered.order_price, order_quantity: @ordered.order_quantity, order_status: @ordered.order_status, order_type: @ordered.order_type, stock_code: @ordered.stock_code, stock_name: @ordered.stock_name, today_tax: @ordered.today_tax, today_trade_commission: @ordered.today_trade_commission, trade_gubun: @ordered.trade_gubun }
    end

    assert_redirected_to ordered_path(assigns(:ordered))
  end

  test "should show ordered" do
    get :show, id: @ordered
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ordered
    assert_response :success
  end

  test "should update ordered" do
    patch :update, id: @ordered, ordered: { account_number: @ordered.account_number, bid_price: @ordered.bid_price, contract_number: @ordered.contract_number, contract_price: @ordered.contract_price, contract_price_quantity: @ordered.contract_price_quantity, contract_price_unit: @ordered.contract_price_unit, contract_time: @ordered.contract_time, contract_total_amount: @ordered.contract_total_amount, current_price: @ordered.current_price, last_order_number: @ordered.last_order_number, manager_number: @ordered.manager_number, not_contract_quantity: @ordered.not_contract_quantity, offered_price: @ordered.offered_price, order_business_classification: @ordered.order_business_classification, order_gubun: @ordered.order_gubun, order_number: @ordered.order_number, order_price: @ordered.order_price, order_quantity: @ordered.order_quantity, order_status: @ordered.order_status, order_type: @ordered.order_type, stock_code: @ordered.stock_code, stock_name: @ordered.stock_name, today_tax: @ordered.today_tax, today_trade_commission: @ordered.today_trade_commission, trade_gubun: @ordered.trade_gubun }
    assert_redirected_to ordered_path(assigns(:ordered))
  end

  test "should destroy ordered" do
    assert_difference('Ordered.count', -1) do
      delete :destroy, id: @ordered
    end

    assert_redirected_to ordereds_path
  end
end
