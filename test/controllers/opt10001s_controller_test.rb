require 'test_helper'

class Opt10001sControllerTest < ActionController::TestCase
  setup do
    @opt10001 = opt10001s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opt10001s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create opt10001" do
    assert_difference('Opt10001.count') do
      post :create, opt10001: { ,: @opt10001.,, ,: @opt10001.,, ,: @opt10001.,, ,: @opt10001.,, ,: @opt10001.,, ,: @opt10001.,, ,: @opt10001.,, ,: @opt10001.,, ,: @opt10001.,, ,: @opt10001.,, ,: @opt10001.,, ,: @opt10001.,, ,: @opt10001.,, : @opt10001., bps: @opt10001.bps, business_profits: @opt10001.business_profits, capital: @opt10001.capital, contrast_symbol: @opt10001.contrast_symbol, contrast_yesterday: @opt10001.contrast_yesterday, credit_rate: @opt10001.credit_rate, current_price: @opt10001.current_price, d250_high_date: @opt10001.d250_high_date, d250_high_price: @opt10001.d250_high_price, d250_high_rate: @opt10001.d250_high_rate, d250_low_date: @opt10001.d250_low_date, d250_low_price: @opt10001.d250_low_price, d250_low_rate: @opt10001.d250_low_rate, eps: @opt10001.eps, ev: @opt10001.ev, expectation_contract_price: @opt10001.expectation_contract_price, expectation_contract_quantity: @opt10001.expectation_contract_quantity, face_value: @opt10001.face_value, face_value_unit: @opt10001.face_value_unit, fluctuation_rate: @opt10001.fluctuation_rate, foreigner_exhaustion_rate: @opt10001.foreigner_exhaustion_rate, high_price: @opt10001.high_price, low_price: @opt10001.low_price, lower_price_limit: @opt10001.lower_price_limit, pbr: @opt10001.pbr, per: @opt10001.per, precision: @opt10001.precision, precision: @opt10001.precision, precision: @opt10001.precision, precision: @opt10001.precision, precision: @opt10001.precision, precision: @opt10001.precision, precision: @opt10001.precision, precision: @opt10001.precision, precision: @opt10001.precision, precision: @opt10001.precision, precision: @opt10001.precision, precision: @opt10001.precision, precision: @opt10001.precision, roe: @opt10001.roe, sales: @opt10001.sales, scale: @opt10001.scale, scale: @opt10001.scale, scale: @opt10001.scale, scale: @opt10001.scale, scale: @opt10001.scale, scale: @opt10001.scale, scale: @opt10001.scale, scale: @opt10001.scale, scale: @opt10001.scale, scale: @opt10001.scale, scale: @opt10001.scale, scale: @opt10001.scale, scale: @opt10001.scale, settling_account_month: @opt10001.settling_account_month, start_price: @opt10001.start_price, stock_code: @opt10001.stock_code, stock_count: @opt10001.stock_count, stock_date: @opt10001.stock_date, stock_name: @opt10001.stock_name, substitute_price: @opt10001.substitute_price, total_market_price: @opt10001.total_market_price, total_market_price_rate: @opt10001.total_market_price_rate, trade_contrast: @opt10001.trade_contrast, trade_quantity: @opt10001.trade_quantity, upper_price_limit: @opt10001.upper_price_limit, year_high_price: @opt10001.year_high_price, year_low_price: @opt10001.year_low_price }
    end

    assert_redirected_to opt10001_path(assigns(:opt10001))
  end

  test "should show opt10001" do
    get :show, id: @opt10001
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @opt10001
    assert_response :success
  end

  test "should update opt10001" do
    patch :update, id: @opt10001, opt10001: { ,: @opt10001.,, ,: @opt10001.,, ,: @opt10001.,, ,: @opt10001.,, ,: @opt10001.,, ,: @opt10001.,, ,: @opt10001.,, ,: @opt10001.,, ,: @opt10001.,, ,: @opt10001.,, ,: @opt10001.,, ,: @opt10001.,, ,: @opt10001.,, : @opt10001., bps: @opt10001.bps, business_profits: @opt10001.business_profits, capital: @opt10001.capital, contrast_symbol: @opt10001.contrast_symbol, contrast_yesterday: @opt10001.contrast_yesterday, credit_rate: @opt10001.credit_rate, current_price: @opt10001.current_price, d250_high_date: @opt10001.d250_high_date, d250_high_price: @opt10001.d250_high_price, d250_high_rate: @opt10001.d250_high_rate, d250_low_date: @opt10001.d250_low_date, d250_low_price: @opt10001.d250_low_price, d250_low_rate: @opt10001.d250_low_rate, eps: @opt10001.eps, ev: @opt10001.ev, expectation_contract_price: @opt10001.expectation_contract_price, expectation_contract_quantity: @opt10001.expectation_contract_quantity, face_value: @opt10001.face_value, face_value_unit: @opt10001.face_value_unit, fluctuation_rate: @opt10001.fluctuation_rate, foreigner_exhaustion_rate: @opt10001.foreigner_exhaustion_rate, high_price: @opt10001.high_price, low_price: @opt10001.low_price, lower_price_limit: @opt10001.lower_price_limit, pbr: @opt10001.pbr, per: @opt10001.per, precision: @opt10001.precision, precision: @opt10001.precision, precision: @opt10001.precision, precision: @opt10001.precision, precision: @opt10001.precision, precision: @opt10001.precision, precision: @opt10001.precision, precision: @opt10001.precision, precision: @opt10001.precision, precision: @opt10001.precision, precision: @opt10001.precision, precision: @opt10001.precision, precision: @opt10001.precision, roe: @opt10001.roe, sales: @opt10001.sales, scale: @opt10001.scale, scale: @opt10001.scale, scale: @opt10001.scale, scale: @opt10001.scale, scale: @opt10001.scale, scale: @opt10001.scale, scale: @opt10001.scale, scale: @opt10001.scale, scale: @opt10001.scale, scale: @opt10001.scale, scale: @opt10001.scale, scale: @opt10001.scale, scale: @opt10001.scale, settling_account_month: @opt10001.settling_account_month, start_price: @opt10001.start_price, stock_code: @opt10001.stock_code, stock_count: @opt10001.stock_count, stock_date: @opt10001.stock_date, stock_name: @opt10001.stock_name, substitute_price: @opt10001.substitute_price, total_market_price: @opt10001.total_market_price, total_market_price_rate: @opt10001.total_market_price_rate, trade_contrast: @opt10001.trade_contrast, trade_quantity: @opt10001.trade_quantity, upper_price_limit: @opt10001.upper_price_limit, year_high_price: @opt10001.year_high_price, year_low_price: @opt10001.year_low_price }
    assert_redirected_to opt10001_path(assigns(:opt10001))
  end

  test "should destroy opt10001" do
    assert_difference('Opt10001.count', -1) do
      delete :destroy, id: @opt10001
    end

    assert_redirected_to opt10001s_path
  end
end
