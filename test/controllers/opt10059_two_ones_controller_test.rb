require 'test_helper'

class Opt10059TwoOnesControllerTest < ActionController::TestCase
  setup do
    @opt10059_two_one = opt10059_two_ones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opt10059_two_ones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create opt10059_two_one" do
    assert_difference('Opt10059TwoOne.count') do
      post :create, opt10059_two_one: { accumulated_trade_price: @opt10059_two_one.accumulated_trade_price, bank: @opt10059_two_one.bank, buyOrSell: @opt10059_two_one.buyOrSell, contrast_symbol: @opt10059_two_one.contrast_symbol, contrast_yesterday: @opt10059_two_one.contrast_yesterday, current_price: @opt10059_two_one.current_price, domestic_investor: @opt10059_two_one.domestic_investor, etc_corporation: @opt10059_two_one.etc_corporation, etc_financial: @opt10059_two_one.etc_financial, financial_investment: @opt10059_two_one.financial_investment, fluctuation_rate: @opt10059_two_one.fluctuation_rate, foregin_investment_in_korea: @opt10059_two_one.foregin_investment_in_korea, foreign_investor: @opt10059_two_one.foreign_investor, institution: @opt10059_two_one.institution, insurance: @opt10059_two_one.insurance, investment_trust: @opt10059_two_one.investment_trust, nation: @opt10059_two_one.nation, pension_fund: @opt10059_two_one.pension_fund, priceOrAmount: @opt10059_two_one.priceOrAmount, private_equity_fund: @opt10059_two_one.private_equity_fund, stock_code: @opt10059_two_one.stock_code, stock_date: @opt10059_two_one.stock_date }
    end

    assert_redirected_to opt10059_two_one_path(assigns(:opt10059_two_one))
  end

  test "should show opt10059_two_one" do
    get :show, id: @opt10059_two_one
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @opt10059_two_one
    assert_response :success
  end

  test "should update opt10059_two_one" do
    patch :update, id: @opt10059_two_one, opt10059_two_one: { accumulated_trade_price: @opt10059_two_one.accumulated_trade_price, bank: @opt10059_two_one.bank, buyOrSell: @opt10059_two_one.buyOrSell, contrast_symbol: @opt10059_two_one.contrast_symbol, contrast_yesterday: @opt10059_two_one.contrast_yesterday, current_price: @opt10059_two_one.current_price, domestic_investor: @opt10059_two_one.domestic_investor, etc_corporation: @opt10059_two_one.etc_corporation, etc_financial: @opt10059_two_one.etc_financial, financial_investment: @opt10059_two_one.financial_investment, fluctuation_rate: @opt10059_two_one.fluctuation_rate, foregin_investment_in_korea: @opt10059_two_one.foregin_investment_in_korea, foreign_investor: @opt10059_two_one.foreign_investor, institution: @opt10059_two_one.institution, insurance: @opt10059_two_one.insurance, investment_trust: @opt10059_two_one.investment_trust, nation: @opt10059_two_one.nation, pension_fund: @opt10059_two_one.pension_fund, priceOrAmount: @opt10059_two_one.priceOrAmount, private_equity_fund: @opt10059_two_one.private_equity_fund, stock_code: @opt10059_two_one.stock_code, stock_date: @opt10059_two_one.stock_date }
    assert_redirected_to opt10059_two_one_path(assigns(:opt10059_two_one))
  end

  test "should destroy opt10059_two_one" do
    assert_difference('Opt10059TwoOne.count', -1) do
      delete :destroy, id: @opt10059_two_one
    end

    assert_redirected_to opt10059_two_ones_path
  end
end
