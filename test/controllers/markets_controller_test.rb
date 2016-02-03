require 'test_helper'

class MarketsControllerTest < ActionController::TestCase
  setup do
#    ActiveRecord::Base.logger = Logger.new(STDOUT)
#    markets1 = Market.find_by_market_name('장내')
#    markets1.delete

    @market = markets(:one)
# puts @market 

  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:markets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create market" do
#    assert_difference('Market.count') do
#      post :create, market: { market_id: @market.market_id, market_name: @market.market_name }
#    end
#    assert_redirected_to market_path(assigns(:market))
  end

  test "should show market" do
    get :show, id: @market
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @market
    assert_response :success
  end

  test "should update market" do
    patch :update, id: @market, market: { market_id: @market.market_id, market_name: @market.market_name }
    assert_redirected_to market_path(assigns(:market))
  end

  test "should destroy market" do
    assert_difference('Market.count', -1) do
      delete :destroy, id: @market
    end

    assert_redirected_to markets_path
  end
end
