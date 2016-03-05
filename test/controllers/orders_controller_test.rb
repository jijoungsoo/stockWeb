require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { account_number: @order.account_number, buy_price: @order.buy_price, contract_number: @order.contract_number, contract_price: @order.contract_price, contract_price_quantity: @order.contract_price_quantity, contract_price_unit: @order.contract_price_unit, contract_time: @order.contract_time, contract_total_amount: @order.contract_total_amount, current_price: @order.current_price, last_order_number: @order.last_order_number, manager_number: @order.manager_number, not_contract_quantity: @order.not_contract_quantity, order_business_classification: @order.order_business_classification, order_gubun: @order.order_gubun, order_number: @order.order_number, order_price: @order.order_price, order_quantity: @order.order_quantity, order_status: @order.order_status, order_type: @order.order_type, sell_price: @order.sell_price, stock_code: @order.stock_code, stock_name: @order.stock_name, today_commission: @order.today_commission, today_tax: @order.today_tax, trade_gubun: @order.trade_gubun }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    patch :update, id: @order, order: { account_number: @order.account_number, buy_price: @order.buy_price, contract_number: @order.contract_number, contract_price: @order.contract_price, contract_price_quantity: @order.contract_price_quantity, contract_price_unit: @order.contract_price_unit, contract_time: @order.contract_time, contract_total_amount: @order.contract_total_amount, current_price: @order.current_price, last_order_number: @order.last_order_number, manager_number: @order.manager_number, not_contract_quantity: @order.not_contract_quantity, order_business_classification: @order.order_business_classification, order_gubun: @order.order_gubun, order_number: @order.order_number, order_price: @order.order_price, order_quantity: @order.order_quantity, order_status: @order.order_status, order_type: @order.order_type, sell_price: @order.sell_price, stock_code: @order.stock_code, stock_name: @order.stock_name, today_commission: @order.today_commission, today_tax: @order.today_tax, trade_gubun: @order.trade_gubun }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
