require 'test_helper'

class Opt10085sControllerTest < ActionController::TestCase
  setup do
    @opt10085 = opt10085s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opt10085s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create opt10085" do
    assert_difference('Opt10085.count') do
      post :create, opt10085: { ,: @opt10085.,, ,: @opt10085.,, : @opt10085., : @opt10085., account_number: @opt10085.account_number, buying_commission: @opt10085.buying_commission, commission: @opt10085.commission, credit_amount: @opt10085.credit_amount, credit_gubun: @opt10085.credit_gubun, credit_interest: @opt10085.credit_interest, date_of_purchase: @opt10085.date_of_purchase, earnings_rate: @opt10085.earnings_rate, evaluated_price: @opt10085.evaluated_price, expiration_date: @opt10085.expiration_date, loan_date: @opt10085.loan_date, not_commission_profit_and_loss: @opt10085.not_commission_profit_and_loss, not_commission_profit_and_loss_rate: @opt10085.not_commission_profit_and_loss_rate, payment_balance: @opt10085.payment_balance, possession_quantity: @opt10085.possession_quantity, precision: @opt10085.precision, precision: @opt10085.precision, purchase_price: @opt10085.purchase_price, scale: @opt10085.scale, scale: @opt10085.scale, sellable_quantity: @opt10085.sellable_quantity, selling_commission: @opt10085.selling_commission, selling_tax: @opt10085.selling_tax, stock_code: @opt10085.stock_code, stock_name: @opt10085.stock_name, today_commission: @opt10085.today_commission, today_sell_profit_and_loss: @opt10085.today_sell_profit_and_loss, today_tax: @opt10085.today_tax, total_amount_of_purchase: @opt10085.total_amount_of_purchase, valuation_profit_and_loss: @opt10085.valuation_profit_and_loss, will_profit_price: @opt10085.will_profit_price }
    end

    assert_redirected_to opt10085_path(assigns(:opt10085))
  end

  test "should show opt10085" do
    get :show, id: @opt10085
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @opt10085
    assert_response :success
  end

  test "should update opt10085" do
    patch :update, id: @opt10085, opt10085: { ,: @opt10085.,, ,: @opt10085.,, : @opt10085., : @opt10085., account_number: @opt10085.account_number, buying_commission: @opt10085.buying_commission, commission: @opt10085.commission, credit_amount: @opt10085.credit_amount, credit_gubun: @opt10085.credit_gubun, credit_interest: @opt10085.credit_interest, date_of_purchase: @opt10085.date_of_purchase, earnings_rate: @opt10085.earnings_rate, evaluated_price: @opt10085.evaluated_price, expiration_date: @opt10085.expiration_date, loan_date: @opt10085.loan_date, not_commission_profit_and_loss: @opt10085.not_commission_profit_and_loss, not_commission_profit_and_loss_rate: @opt10085.not_commission_profit_and_loss_rate, payment_balance: @opt10085.payment_balance, possession_quantity: @opt10085.possession_quantity, precision: @opt10085.precision, precision: @opt10085.precision, purchase_price: @opt10085.purchase_price, scale: @opt10085.scale, scale: @opt10085.scale, sellable_quantity: @opt10085.sellable_quantity, selling_commission: @opt10085.selling_commission, selling_tax: @opt10085.selling_tax, stock_code: @opt10085.stock_code, stock_name: @opt10085.stock_name, today_commission: @opt10085.today_commission, today_sell_profit_and_loss: @opt10085.today_sell_profit_and_loss, today_tax: @opt10085.today_tax, total_amount_of_purchase: @opt10085.total_amount_of_purchase, valuation_profit_and_loss: @opt10085.valuation_profit_and_loss, will_profit_price: @opt10085.will_profit_price }
    assert_redirected_to opt10085_path(assigns(:opt10085))
  end

  test "should destroy opt10085" do
    assert_difference('Opt10085.count', -1) do
      delete :destroy, id: @opt10085
    end

    assert_redirected_to opt10085s_path
  end
end
