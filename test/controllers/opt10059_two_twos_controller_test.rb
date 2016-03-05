require 'test_helper'

class Opt10059TwoTwosControllerTest < ActionController::TestCase
  setup do
    @opt10059_two_two = opt10059_two_twos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opt10059_two_twos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create opt10059_two_two" do
    assert_difference('Opt10059TwoTwo.count') do
      post :create, opt10059_two_two: { accumulated_trade_price: @opt10059_two_two.accumulated_trade_price, bank: @opt10059_two_two.bank, buyOrSell: @opt10059_two_two.buyOrSell, contrast_symbol: @opt10059_two_two.contrast_symbol, contrast_yesterday: @opt10059_two_two.contrast_yesterday, current_price: @opt10059_two_two.current_price, domestic_investor: @opt10059_two_two.domestic_investor, etc_corporation: @opt10059_two_two.etc_corporation, etc_financial: @opt10059_two_two.etc_financial, financial_investment: @opt10059_two_two.financial_investment, fluctuation_rate: @opt10059_two_two.fluctuation_rate, foregin_investment_in_korea: @opt10059_two_two.foregin_investment_in_korea, foreign_investor: @opt10059_two_two.foreign_investor, institution: @opt10059_two_two.institution, insurance: @opt10059_two_two.insurance, investment_trust: @opt10059_two_two.investment_trust, nation: @opt10059_two_two.nation, pension_fund: @opt10059_two_two.pension_fund, priceOrAmount: @opt10059_two_two.priceOrAmount, private_equity_fund: @opt10059_two_two.private_equity_fund, stock_code: @opt10059_two_two.stock_code, stock_date: @opt10059_two_two.stock_date }
    end

    assert_redirected_to opt10059_two_two_path(assigns(:opt10059_two_two))
  end

  test "should show opt10059_two_two" do
    get :show, id: @opt10059_two_two
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @opt10059_two_two
    assert_response :success
  end

  test "should update opt10059_two_two" do
    patch :update, id: @opt10059_two_two, opt10059_two_two: { accumulated_trade_price: @opt10059_two_two.accumulated_trade_price, bank: @opt10059_two_two.bank, buyOrSell: @opt10059_two_two.buyOrSell, contrast_symbol: @opt10059_two_two.contrast_symbol, contrast_yesterday: @opt10059_two_two.contrast_yesterday, current_price: @opt10059_two_two.current_price, domestic_investor: @opt10059_two_two.domestic_investor, etc_corporation: @opt10059_two_two.etc_corporation, etc_financial: @opt10059_two_two.etc_financial, financial_investment: @opt10059_two_two.financial_investment, fluctuation_rate: @opt10059_two_two.fluctuation_rate, foregin_investment_in_korea: @opt10059_two_two.foregin_investment_in_korea, foreign_investor: @opt10059_two_two.foreign_investor, institution: @opt10059_two_two.institution, insurance: @opt10059_two_two.insurance, investment_trust: @opt10059_two_two.investment_trust, nation: @opt10059_two_two.nation, pension_fund: @opt10059_two_two.pension_fund, priceOrAmount: @opt10059_two_two.priceOrAmount, private_equity_fund: @opt10059_two_two.private_equity_fund, stock_code: @opt10059_two_two.stock_code, stock_date: @opt10059_two_two.stock_date }
    assert_redirected_to opt10059_two_two_path(assigns(:opt10059_two_two))
  end

  test "should destroy opt10059_two_two" do
    assert_difference('Opt10059TwoTwo.count', -1) do
      delete :destroy, id: @opt10059_two_two
    end

    assert_redirected_to opt10059_two_twos_path
  end
end
