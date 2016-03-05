require 'test_helper'

class Opt10059sControllerTest < ActionController::TestCase
  setup do
    @opt10059 = opt10059s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opt10059s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create opt10059" do
    assert_difference('Opt10059.count') do
      post :create, opt10059: { accumulated_trade_price: @opt10059.accumulated_trade_price, buy_amount_bank: @opt10059.buy_amount_bank, buy_amount_domestic_investor: @opt10059.buy_amount_domestic_investor, buy_amount_etc_corporation: @opt10059.buy_amount_etc_corporation, buy_amount_etc_financial: @opt10059.buy_amount_etc_financial, buy_amount_financial_investment: @opt10059.buy_amount_financial_investment, buy_amount_foregin_investment_in_korea: @opt10059.buy_amount_foregin_investment_in_korea, buy_amount_foreign_investor: @opt10059.buy_amount_foreign_investor, buy_amount_institution: @opt10059.buy_amount_institution, buy_amount_insurance: @opt10059.buy_amount_insurance, buy_amount_investment_trust: @opt10059.buy_amount_investment_trust, buy_amount_pension_fund: @opt10059.buy_amount_pension_fund, buy_amount_private_equity_fund: @opt10059.buy_amount_private_equity_fund, buy_price_bank: @opt10059.buy_price_bank, buy_price_domestic_investor: @opt10059.buy_price_domestic_investor, buy_price_etc_corporation: @opt10059.buy_price_etc_corporation, buy_price_etc_financial: @opt10059.buy_price_etc_financial, buy_price_financial_investment: @opt10059.buy_price_financial_investment, buy_price_foregin_investment_in_korea: @opt10059.buy_price_foregin_investment_in_korea, buy_price_foreign_investor: @opt10059.buy_price_foreign_investor, buy_price_institution: @opt10059.buy_price_institution, buy_price_insurance: @opt10059.buy_price_insurance, buy_price_investment_trust: @opt10059.buy_price_investment_trust, buy_price_nation: @opt10059.buy_price_nation, buy_price_nation: @opt10059.buy_price_nation, buy_price_pension_fund: @opt10059.buy_price_pension_fund, buy_price_private_equity_fund: @opt10059.buy_price_private_equity_fund, contrast_symbol: @opt10059.contrast_symbol, contrast_yesterday: @opt10059.contrast_yesterday, current_price: @opt10059.current_price, fluctuation_rate: @opt10059.fluctuation_rate, sell_amount_bank: @opt10059.sell_amount_bank, sell_amount_domestic_investor: @opt10059.sell_amount_domestic_investor, sell_amount_etc_corporation: @opt10059.sell_amount_etc_corporation, sell_amount_etc_financial: @opt10059.sell_amount_etc_financial, sell_amount_financial_investment: @opt10059.sell_amount_financial_investment, sell_amount_foregin_investment_in_korea: @opt10059.sell_amount_foregin_investment_in_korea, sell_amount_foreign_investor: @opt10059.sell_amount_foreign_investor, sell_amount_institution: @opt10059.sell_amount_institution, sell_amount_insurance: @opt10059.sell_amount_insurance, sell_amount_investment_trust: @opt10059.sell_amount_investment_trust, sell_amount_nation: @opt10059.sell_amount_nation, sell_amount_private_equity_fund: @opt10059.sell_amount_private_equity_fund, sell_price_bank: @opt10059.sell_price_bank, sell_price_domestic_investor: @opt10059.sell_price_domestic_investor, sell_price_etc_corporation: @opt10059.sell_price_etc_corporation, sell_price_etc_financial: @opt10059.sell_price_etc_financial, sell_price_financial_investment: @opt10059.sell_price_financial_investment, sell_price_foregin_investment_in_korea: @opt10059.sell_price_foregin_investment_in_korea, sell_price_foreign_investor: @opt10059.sell_price_foreign_investor, sell_price_institution: @opt10059.sell_price_institution, sell_price_insurance: @opt10059.sell_price_insurance, sell_price_investment_trust: @opt10059.sell_price_investment_trust, sell_price_nation: @opt10059.sell_price_nation, sell_price_pension_fund: @opt10059.sell_price_pension_fund, sell_price_pension_fund: @opt10059.sell_price_pension_fund, sell_price_private_equity_fund: @opt10059.sell_price_private_equity_fund, stock_code: @opt10059.stock_code, stock_date: @opt10059.stock_date }
    end

    assert_redirected_to opt10059_path(assigns(:opt10059))
  end

  test "should show opt10059" do
    get :show, id: @opt10059
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @opt10059
    assert_response :success
  end

  test "should update opt10059" do
    patch :update, id: @opt10059, opt10059: { accumulated_trade_price: @opt10059.accumulated_trade_price, buy_amount_bank: @opt10059.buy_amount_bank, buy_amount_domestic_investor: @opt10059.buy_amount_domestic_investor, buy_amount_etc_corporation: @opt10059.buy_amount_etc_corporation, buy_amount_etc_financial: @opt10059.buy_amount_etc_financial, buy_amount_financial_investment: @opt10059.buy_amount_financial_investment, buy_amount_foregin_investment_in_korea: @opt10059.buy_amount_foregin_investment_in_korea, buy_amount_foreign_investor: @opt10059.buy_amount_foreign_investor, buy_amount_institution: @opt10059.buy_amount_institution, buy_amount_insurance: @opt10059.buy_amount_insurance, buy_amount_investment_trust: @opt10059.buy_amount_investment_trust, buy_amount_pension_fund: @opt10059.buy_amount_pension_fund, buy_amount_private_equity_fund: @opt10059.buy_amount_private_equity_fund, buy_price_bank: @opt10059.buy_price_bank, buy_price_domestic_investor: @opt10059.buy_price_domestic_investor, buy_price_etc_corporation: @opt10059.buy_price_etc_corporation, buy_price_etc_financial: @opt10059.buy_price_etc_financial, buy_price_financial_investment: @opt10059.buy_price_financial_investment, buy_price_foregin_investment_in_korea: @opt10059.buy_price_foregin_investment_in_korea, buy_price_foreign_investor: @opt10059.buy_price_foreign_investor, buy_price_institution: @opt10059.buy_price_institution, buy_price_insurance: @opt10059.buy_price_insurance, buy_price_investment_trust: @opt10059.buy_price_investment_trust, buy_price_nation: @opt10059.buy_price_nation, buy_price_nation: @opt10059.buy_price_nation, buy_price_pension_fund: @opt10059.buy_price_pension_fund, buy_price_private_equity_fund: @opt10059.buy_price_private_equity_fund, contrast_symbol: @opt10059.contrast_symbol, contrast_yesterday: @opt10059.contrast_yesterday, current_price: @opt10059.current_price, fluctuation_rate: @opt10059.fluctuation_rate, sell_amount_bank: @opt10059.sell_amount_bank, sell_amount_domestic_investor: @opt10059.sell_amount_domestic_investor, sell_amount_etc_corporation: @opt10059.sell_amount_etc_corporation, sell_amount_etc_financial: @opt10059.sell_amount_etc_financial, sell_amount_financial_investment: @opt10059.sell_amount_financial_investment, sell_amount_foregin_investment_in_korea: @opt10059.sell_amount_foregin_investment_in_korea, sell_amount_foreign_investor: @opt10059.sell_amount_foreign_investor, sell_amount_institution: @opt10059.sell_amount_institution, sell_amount_insurance: @opt10059.sell_amount_insurance, sell_amount_investment_trust: @opt10059.sell_amount_investment_trust, sell_amount_nation: @opt10059.sell_amount_nation, sell_amount_private_equity_fund: @opt10059.sell_amount_private_equity_fund, sell_price_bank: @opt10059.sell_price_bank, sell_price_domestic_investor: @opt10059.sell_price_domestic_investor, sell_price_etc_corporation: @opt10059.sell_price_etc_corporation, sell_price_etc_financial: @opt10059.sell_price_etc_financial, sell_price_financial_investment: @opt10059.sell_price_financial_investment, sell_price_foregin_investment_in_korea: @opt10059.sell_price_foregin_investment_in_korea, sell_price_foreign_investor: @opt10059.sell_price_foreign_investor, sell_price_institution: @opt10059.sell_price_institution, sell_price_insurance: @opt10059.sell_price_insurance, sell_price_investment_trust: @opt10059.sell_price_investment_trust, sell_price_nation: @opt10059.sell_price_nation, sell_price_pension_fund: @opt10059.sell_price_pension_fund, sell_price_pension_fund: @opt10059.sell_price_pension_fund, sell_price_private_equity_fund: @opt10059.sell_price_private_equity_fund, stock_code: @opt10059.stock_code, stock_date: @opt10059.stock_date }
    assert_redirected_to opt10059_path(assigns(:opt10059))
  end

  test "should destroy opt10059" do
    assert_difference('Opt10059.count', -1) do
      delete :destroy, id: @opt10059
    end

    assert_redirected_to opt10059s_path
  end
end
