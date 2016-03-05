require 'test_helper'

class Opt10059OneOnesControllerTest < ActionController::TestCase
  setup do
    @opt10059_one_one = opt10059_one_ones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opt10059_one_ones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create opt10059_one_one" do
    assert_difference('Opt10059OneOne.count') do
      post :create, opt10059_one_one: { accumulated_trade_price: @opt10059_one_one.accumulated_trade_price, bank: @opt10059_one_one.bank, buyOrSell: @opt10059_one_one.buyOrSell, contrast_symbol: @opt10059_one_one.contrast_symbol, contrast_yesterday: @opt10059_one_one.contrast_yesterday, current_price: @opt10059_one_one.current_price, domestic_investor: @opt10059_one_one.domestic_investor, etc_corporation: @opt10059_one_one.etc_corporation, etc_financial: @opt10059_one_one.etc_financial, financial_investment: @opt10059_one_one.financial_investment, fluctuation_rate: @opt10059_one_one.fluctuation_rate, foregin_investment_in_korea: @opt10059_one_one.foregin_investment_in_korea, foreign_investor: @opt10059_one_one.foreign_investor, institution: @opt10059_one_one.institution, insurance: @opt10059_one_one.insurance, investment_trust: @opt10059_one_one.investment_trust, nation: @opt10059_one_one.nation, pension_fund: @opt10059_one_one.pension_fund, priceOrAmount: @opt10059_one_one.priceOrAmount, private_equity_fund: @opt10059_one_one.private_equity_fund, stock_code: @opt10059_one_one.stock_code, stock_date: @opt10059_one_one.stock_date }
    end

    assert_redirected_to opt10059_one_one_path(assigns(:opt10059_one_one))
  end

  test "should show opt10059_one_one" do
    get :show, id: @opt10059_one_one
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @opt10059_one_one
    assert_response :success
  end

  test "should update opt10059_one_one" do
    patch :update, id: @opt10059_one_one, opt10059_one_one: { accumulated_trade_price: @opt10059_one_one.accumulated_trade_price, bank: @opt10059_one_one.bank, buyOrSell: @opt10059_one_one.buyOrSell, contrast_symbol: @opt10059_one_one.contrast_symbol, contrast_yesterday: @opt10059_one_one.contrast_yesterday, current_price: @opt10059_one_one.current_price, domestic_investor: @opt10059_one_one.domestic_investor, etc_corporation: @opt10059_one_one.etc_corporation, etc_financial: @opt10059_one_one.etc_financial, financial_investment: @opt10059_one_one.financial_investment, fluctuation_rate: @opt10059_one_one.fluctuation_rate, foregin_investment_in_korea: @opt10059_one_one.foregin_investment_in_korea, foreign_investor: @opt10059_one_one.foreign_investor, institution: @opt10059_one_one.institution, insurance: @opt10059_one_one.insurance, investment_trust: @opt10059_one_one.investment_trust, nation: @opt10059_one_one.nation, pension_fund: @opt10059_one_one.pension_fund, priceOrAmount: @opt10059_one_one.priceOrAmount, private_equity_fund: @opt10059_one_one.private_equity_fund, stock_code: @opt10059_one_one.stock_code, stock_date: @opt10059_one_one.stock_date }
    assert_redirected_to opt10059_one_one_path(assigns(:opt10059_one_one))
  end

  test "should destroy opt10059_one_one" do
    assert_difference('Opt10059OneOne.count', -1) do
      delete :destroy, id: @opt10059_one_one
    end

    assert_redirected_to opt10059_one_ones_path
  end
end
