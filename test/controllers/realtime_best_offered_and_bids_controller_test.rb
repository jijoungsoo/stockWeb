require 'test_helper'

class RealtimeBestOfferedAndBidsControllerTest < ActionController::TestCase
  setup do
    @realtime_best_offered_and_bid = realtime_best_offered_and_bids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:realtime_best_offered_and_bids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create realtime_best_offered_and_bid" do
    assert_difference('RealtimeBestOfferedAndBid.count') do
      post :create, realtime_best_offered_and_bid: { bid_price: @realtime_best_offered_and_bid.bid_price, offered_price: @realtime_best_offered_and_bid.offered_price, stock_code: @realtime_best_offered_and_bid.stock_code, stock_date: @realtime_best_offered_and_bid.stock_date }
    end

    assert_redirected_to realtime_best_offered_and_bid_path(assigns(:realtime_best_offered_and_bid))
  end

  test "should show realtime_best_offered_and_bid" do
    get :show, id: @realtime_best_offered_and_bid
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @realtime_best_offered_and_bid
    assert_response :success
  end

  test "should update realtime_best_offered_and_bid" do
    patch :update, id: @realtime_best_offered_and_bid, realtime_best_offered_and_bid: { bid_price: @realtime_best_offered_and_bid.bid_price, offered_price: @realtime_best_offered_and_bid.offered_price, stock_code: @realtime_best_offered_and_bid.stock_code, stock_date: @realtime_best_offered_and_bid.stock_date }
    assert_redirected_to realtime_best_offered_and_bid_path(assigns(:realtime_best_offered_and_bid))
  end

  test "should destroy realtime_best_offered_and_bid" do
    assert_difference('RealtimeBestOfferedAndBid.count', -1) do
      delete :destroy, id: @realtime_best_offered_and_bid
    end

    assert_redirected_to realtime_best_offered_and_bids_path
  end
end
