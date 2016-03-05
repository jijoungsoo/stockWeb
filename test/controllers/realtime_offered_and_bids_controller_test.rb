require 'test_helper'

class RealtimeOfferedAndBidsControllerTest < ActionController::TestCase
  setup do
    @realtime_offered_and_bid = realtime_offered_and_bids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:realtime_offered_and_bids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create realtime_offered_and_bid" do
    assert_difference('RealtimeOfferedAndBid.count') do
      post :create, realtime_offered_and_bid: { accumulated_trade_quantity: @realtime_offered_and_bid.accumulated_trade_quantity, bid_price10: @realtime_offered_and_bid.bid_price10, bid_price1: @realtime_offered_and_bid.bid_price1, bid_price2: @realtime_offered_and_bid.bid_price2, bid_price3: @realtime_offered_and_bid.bid_price3, bid_price4: @realtime_offered_and_bid.bid_price4, bid_price5: @realtime_offered_and_bid.bid_price5, bid_price6: @realtime_offered_and_bid.bid_price6, bid_price7: @realtime_offered_and_bid.bid_price7, bid_price8: @realtime_offered_and_bid.bid_price8, bid_price9: @realtime_offered_and_bid.bid_price9, bid_price_contrast10: @realtime_offered_and_bid.bid_price_contrast10, bid_price_contrast1: @realtime_offered_and_bid.bid_price_contrast1, bid_price_contrast2: @realtime_offered_and_bid.bid_price_contrast2, bid_price_contrast3: @realtime_offered_and_bid.bid_price_contrast3, bid_price_contrast4: @realtime_offered_and_bid.bid_price_contrast4, bid_price_contrast5: @realtime_offered_and_bid.bid_price_contrast5, bid_price_contrast6: @realtime_offered_and_bid.bid_price_contrast6, bid_price_contrast7: @realtime_offered_and_bid.bid_price_contrast7, bid_price_contrast8: @realtime_offered_and_bid.bid_price_contrast8, bid_price_contrast9: @realtime_offered_and_bid.bid_price_contrast9, bid_quantity10: @realtime_offered_and_bid.bid_quantity10, bid_quantity1: @realtime_offered_and_bid.bid_quantity1, bid_quantity2: @realtime_offered_and_bid.bid_quantity2, bid_quantity3: @realtime_offered_and_bid.bid_quantity3, bid_quantity4: @realtime_offered_and_bid.bid_quantity4, bid_quantity5: @realtime_offered_and_bid.bid_quantity5, bid_quantity6: @realtime_offered_and_bid.bid_quantity6, bid_quantity7: @realtime_offered_and_bid.bid_quantity7, bid_quantity8: @realtime_offered_and_bid.bid_quantity8, bid_quantity9: @realtime_offered_and_bid.bid_quantity9, bid_rate: @realtime_offered_and_bid.bid_rate, bid_total_residual_quantity: @realtime_offered_and_bid.bid_total_residual_quantity, bid_total_residual_quantity_contrast: @realtime_offered_and_bid.bid_total_residual_quantity_contrast, expectation_contract_price1: @realtime_offered_and_bid.expectation_contract_price1, expectation_contract_price: @realtime_offered_and_bid.expectation_contract_price, expectation_contract_quantity1: @realtime_offered_and_bid.expectation_contract_quantity1, expectation_contract_quantity: @realtime_offered_and_bid.expectation_contract_quantity, expectation_contract_yesterday_contrast_fluctuation_rate1: @realtime_offered_and_bid.expectation_contract_yesterday_contrast_fluctuation_rate1, expectation_contract_yesterday_contrast_fluctuation_rate: @realtime_offered_and_bid.expectation_contract_yesterday_contrast_fluctuation_rate, expectation_contract_yesterday_contrast_price1: @realtime_offered_and_bid.expectation_contract_yesterday_contrast_price1, expectation_contract_yesterday_contrast_price: @realtime_offered_and_bid.expectation_contract_yesterday_contrast_price, expectation_contract_yesterday_contrast_rate: @realtime_offered_and_bid.expectation_contract_yesterday_contrast_rate, expectation_contract_yesterday_contrast_symbol1: @realtime_offered_and_bid.expectation_contract_yesterday_contrast_symbol1, expectation_contract_yesterday_contrast_symbol: @realtime_offered_and_bid.expectation_contract_yesterday_contrast_symbol, investor_ticker: @realtime_offered_and_bid.investor_ticker, lp_bid_quantity10: @realtime_offered_and_bid.lp_bid_quantity10, lp_bid_quantity1: @realtime_offered_and_bid.lp_bid_quantity1, lp_bid_quantity2: @realtime_offered_and_bid.lp_bid_quantity2, lp_bid_quantity3: @realtime_offered_and_bid.lp_bid_quantity3, lp_bid_quantity4: @realtime_offered_and_bid.lp_bid_quantity4, lp_bid_quantity5: @realtime_offered_and_bid.lp_bid_quantity5, lp_bid_quantity6: @realtime_offered_and_bid.lp_bid_quantity6, lp_bid_quantity7: @realtime_offered_and_bid.lp_bid_quantity7, lp_bid_quantity8: @realtime_offered_and_bid.lp_bid_quantity8, lp_bid_quantity9: @realtime_offered_and_bid.lp_bid_quantity9, lp_offered_quantity10: @realtime_offered_and_bid.lp_offered_quantity10, lp_offered_quantity1: @realtime_offered_and_bid.lp_offered_quantity1, lp_offered_quantity2: @realtime_offered_and_bid.lp_offered_quantity2, lp_offered_quantity3: @realtime_offered_and_bid.lp_offered_quantity3, lp_offered_quantity4: @realtime_offered_and_bid.lp_offered_quantity4, lp_offered_quantity5: @realtime_offered_and_bid.lp_offered_quantity5, lp_offered_quantity6: @realtime_offered_and_bid.lp_offered_quantity6, lp_offered_quantity7: @realtime_offered_and_bid.lp_offered_quantity7, lp_offered_quantity8: @realtime_offered_and_bid.lp_offered_quantity8, lp_offered_quantity9: @realtime_offered_and_bid.lp_offered_quantity9, market_gubun: @realtime_offered_and_bid.market_gubun, net_buy_residual_quantity: @realtime_offered_and_bid.net_buy_residual_quantity, net_sell_residual_quantity: @realtime_offered_and_bid.net_sell_residual_quantity, offered_price10: @realtime_offered_and_bid.offered_price10, offered_price1: @realtime_offered_and_bid.offered_price1, offered_price2: @realtime_offered_and_bid.offered_price2, offered_price3: @realtime_offered_and_bid.offered_price3, offered_price4: @realtime_offered_and_bid.offered_price4, offered_price5: @realtime_offered_and_bid.offered_price5, offered_price6: @realtime_offered_and_bid.offered_price6, offered_price7: @realtime_offered_and_bid.offered_price7, offered_price8: @realtime_offered_and_bid.offered_price8, offered_price9: @realtime_offered_and_bid.offered_price9, offered_price_contrast10: @realtime_offered_and_bid.offered_price_contrast10, offered_price_contrast1: @realtime_offered_and_bid.offered_price_contrast1, offered_price_contrast2: @realtime_offered_and_bid.offered_price_contrast2, offered_price_contrast3: @realtime_offered_and_bid.offered_price_contrast3, offered_price_contrast4: @realtime_offered_and_bid.offered_price_contrast4, offered_price_contrast5: @realtime_offered_and_bid.offered_price_contrast5, offered_price_contrast6: @realtime_offered_and_bid.offered_price_contrast6, offered_price_contrast7: @realtime_offered_and_bid.offered_price_contrast7, offered_price_contrast8: @realtime_offered_and_bid.offered_price_contrast8, offered_price_contrast9: @realtime_offered_and_bid.offered_price_contrast9, offered_quantity10: @realtime_offered_and_bid.offered_quantity10, offered_quantity1: @realtime_offered_and_bid.offered_quantity1, offered_quantity2: @realtime_offered_and_bid.offered_quantity2, offered_quantity3: @realtime_offered_and_bid.offered_quantity3, offered_quantity4: @realtime_offered_and_bid.offered_quantity4, offered_quantity5: @realtime_offered_and_bid.offered_quantity5, offered_quantity6: @realtime_offered_and_bid.offered_quantity6, offered_quantity7: @realtime_offered_and_bid.offered_quantity7, offered_quantity8: @realtime_offered_and_bid.offered_quantity8, offered_quantity9: @realtime_offered_and_bid.offered_quantity9, offered_rate: @realtime_offered_and_bid.offered_rate, offered_total_residual_quantity: @realtime_offered_and_bid.offered_total_residual_quantity, offered_total_residual_quantity_contrast: @realtime_offered_and_bid.offered_total_residual_quantity_contrast, stock_code: @realtime_offered_and_bid.stock_code, stock_date: @realtime_offered_and_bid.stock_date }
    end

    assert_redirected_to realtime_offered_and_bid_path(assigns(:realtime_offered_and_bid))
  end

  test "should show realtime_offered_and_bid" do
    get :show, id: @realtime_offered_and_bid
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @realtime_offered_and_bid
    assert_response :success
  end

  test "should update realtime_offered_and_bid" do
    patch :update, id: @realtime_offered_and_bid, realtime_offered_and_bid: { accumulated_trade_quantity: @realtime_offered_and_bid.accumulated_trade_quantity, bid_price10: @realtime_offered_and_bid.bid_price10, bid_price1: @realtime_offered_and_bid.bid_price1, bid_price2: @realtime_offered_and_bid.bid_price2, bid_price3: @realtime_offered_and_bid.bid_price3, bid_price4: @realtime_offered_and_bid.bid_price4, bid_price5: @realtime_offered_and_bid.bid_price5, bid_price6: @realtime_offered_and_bid.bid_price6, bid_price7: @realtime_offered_and_bid.bid_price7, bid_price8: @realtime_offered_and_bid.bid_price8, bid_price9: @realtime_offered_and_bid.bid_price9, bid_price_contrast10: @realtime_offered_and_bid.bid_price_contrast10, bid_price_contrast1: @realtime_offered_and_bid.bid_price_contrast1, bid_price_contrast2: @realtime_offered_and_bid.bid_price_contrast2, bid_price_contrast3: @realtime_offered_and_bid.bid_price_contrast3, bid_price_contrast4: @realtime_offered_and_bid.bid_price_contrast4, bid_price_contrast5: @realtime_offered_and_bid.bid_price_contrast5, bid_price_contrast6: @realtime_offered_and_bid.bid_price_contrast6, bid_price_contrast7: @realtime_offered_and_bid.bid_price_contrast7, bid_price_contrast8: @realtime_offered_and_bid.bid_price_contrast8, bid_price_contrast9: @realtime_offered_and_bid.bid_price_contrast9, bid_quantity10: @realtime_offered_and_bid.bid_quantity10, bid_quantity1: @realtime_offered_and_bid.bid_quantity1, bid_quantity2: @realtime_offered_and_bid.bid_quantity2, bid_quantity3: @realtime_offered_and_bid.bid_quantity3, bid_quantity4: @realtime_offered_and_bid.bid_quantity4, bid_quantity5: @realtime_offered_and_bid.bid_quantity5, bid_quantity6: @realtime_offered_and_bid.bid_quantity6, bid_quantity7: @realtime_offered_and_bid.bid_quantity7, bid_quantity8: @realtime_offered_and_bid.bid_quantity8, bid_quantity9: @realtime_offered_and_bid.bid_quantity9, bid_rate: @realtime_offered_and_bid.bid_rate, bid_total_residual_quantity: @realtime_offered_and_bid.bid_total_residual_quantity, bid_total_residual_quantity_contrast: @realtime_offered_and_bid.bid_total_residual_quantity_contrast, expectation_contract_price1: @realtime_offered_and_bid.expectation_contract_price1, expectation_contract_price: @realtime_offered_and_bid.expectation_contract_price, expectation_contract_quantity1: @realtime_offered_and_bid.expectation_contract_quantity1, expectation_contract_quantity: @realtime_offered_and_bid.expectation_contract_quantity, expectation_contract_yesterday_contrast_fluctuation_rate1: @realtime_offered_and_bid.expectation_contract_yesterday_contrast_fluctuation_rate1, expectation_contract_yesterday_contrast_fluctuation_rate: @realtime_offered_and_bid.expectation_contract_yesterday_contrast_fluctuation_rate, expectation_contract_yesterday_contrast_price1: @realtime_offered_and_bid.expectation_contract_yesterday_contrast_price1, expectation_contract_yesterday_contrast_price: @realtime_offered_and_bid.expectation_contract_yesterday_contrast_price, expectation_contract_yesterday_contrast_rate: @realtime_offered_and_bid.expectation_contract_yesterday_contrast_rate, expectation_contract_yesterday_contrast_symbol1: @realtime_offered_and_bid.expectation_contract_yesterday_contrast_symbol1, expectation_contract_yesterday_contrast_symbol: @realtime_offered_and_bid.expectation_contract_yesterday_contrast_symbol, investor_ticker: @realtime_offered_and_bid.investor_ticker, lp_bid_quantity10: @realtime_offered_and_bid.lp_bid_quantity10, lp_bid_quantity1: @realtime_offered_and_bid.lp_bid_quantity1, lp_bid_quantity2: @realtime_offered_and_bid.lp_bid_quantity2, lp_bid_quantity3: @realtime_offered_and_bid.lp_bid_quantity3, lp_bid_quantity4: @realtime_offered_and_bid.lp_bid_quantity4, lp_bid_quantity5: @realtime_offered_and_bid.lp_bid_quantity5, lp_bid_quantity6: @realtime_offered_and_bid.lp_bid_quantity6, lp_bid_quantity7: @realtime_offered_and_bid.lp_bid_quantity7, lp_bid_quantity8: @realtime_offered_and_bid.lp_bid_quantity8, lp_bid_quantity9: @realtime_offered_and_bid.lp_bid_quantity9, lp_offered_quantity10: @realtime_offered_and_bid.lp_offered_quantity10, lp_offered_quantity1: @realtime_offered_and_bid.lp_offered_quantity1, lp_offered_quantity2: @realtime_offered_and_bid.lp_offered_quantity2, lp_offered_quantity3: @realtime_offered_and_bid.lp_offered_quantity3, lp_offered_quantity4: @realtime_offered_and_bid.lp_offered_quantity4, lp_offered_quantity5: @realtime_offered_and_bid.lp_offered_quantity5, lp_offered_quantity6: @realtime_offered_and_bid.lp_offered_quantity6, lp_offered_quantity7: @realtime_offered_and_bid.lp_offered_quantity7, lp_offered_quantity8: @realtime_offered_and_bid.lp_offered_quantity8, lp_offered_quantity9: @realtime_offered_and_bid.lp_offered_quantity9, market_gubun: @realtime_offered_and_bid.market_gubun, net_buy_residual_quantity: @realtime_offered_and_bid.net_buy_residual_quantity, net_sell_residual_quantity: @realtime_offered_and_bid.net_sell_residual_quantity, offered_price10: @realtime_offered_and_bid.offered_price10, offered_price1: @realtime_offered_and_bid.offered_price1, offered_price2: @realtime_offered_and_bid.offered_price2, offered_price3: @realtime_offered_and_bid.offered_price3, offered_price4: @realtime_offered_and_bid.offered_price4, offered_price5: @realtime_offered_and_bid.offered_price5, offered_price6: @realtime_offered_and_bid.offered_price6, offered_price7: @realtime_offered_and_bid.offered_price7, offered_price8: @realtime_offered_and_bid.offered_price8, offered_price9: @realtime_offered_and_bid.offered_price9, offered_price_contrast10: @realtime_offered_and_bid.offered_price_contrast10, offered_price_contrast1: @realtime_offered_and_bid.offered_price_contrast1, offered_price_contrast2: @realtime_offered_and_bid.offered_price_contrast2, offered_price_contrast3: @realtime_offered_and_bid.offered_price_contrast3, offered_price_contrast4: @realtime_offered_and_bid.offered_price_contrast4, offered_price_contrast5: @realtime_offered_and_bid.offered_price_contrast5, offered_price_contrast6: @realtime_offered_and_bid.offered_price_contrast6, offered_price_contrast7: @realtime_offered_and_bid.offered_price_contrast7, offered_price_contrast8: @realtime_offered_and_bid.offered_price_contrast8, offered_price_contrast9: @realtime_offered_and_bid.offered_price_contrast9, offered_quantity10: @realtime_offered_and_bid.offered_quantity10, offered_quantity1: @realtime_offered_and_bid.offered_quantity1, offered_quantity2: @realtime_offered_and_bid.offered_quantity2, offered_quantity3: @realtime_offered_and_bid.offered_quantity3, offered_quantity4: @realtime_offered_and_bid.offered_quantity4, offered_quantity5: @realtime_offered_and_bid.offered_quantity5, offered_quantity6: @realtime_offered_and_bid.offered_quantity6, offered_quantity7: @realtime_offered_and_bid.offered_quantity7, offered_quantity8: @realtime_offered_and_bid.offered_quantity8, offered_quantity9: @realtime_offered_and_bid.offered_quantity9, offered_rate: @realtime_offered_and_bid.offered_rate, offered_total_residual_quantity: @realtime_offered_and_bid.offered_total_residual_quantity, offered_total_residual_quantity_contrast: @realtime_offered_and_bid.offered_total_residual_quantity_contrast, stock_code: @realtime_offered_and_bid.stock_code, stock_date: @realtime_offered_and_bid.stock_date }
    assert_redirected_to realtime_offered_and_bid_path(assigns(:realtime_offered_and_bid))
  end

  test "should destroy realtime_offered_and_bid" do
    assert_difference('RealtimeOfferedAndBid.count', -1) do
      delete :destroy, id: @realtime_offered_and_bid
    end

    assert_redirected_to realtime_offered_and_bids_path
  end
end