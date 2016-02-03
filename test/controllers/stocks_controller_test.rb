require 'test_helper'

class StocksControllerTest < ActionController::TestCase
  setup do
    @stock = stocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stock" do
	markets=Market.all
	stocks=Stock.all
	puts "stocks.count 1= #{stocks.count}"
	stocks.delete_all
	puts "stocks.count 2= #{stocks.count}"

	markets.each do |market|
		# assert_redirected_to stock_path(assigns(:stock))
		kiwoomApi = KiwoomApi.new()
	        stock_code_list=kiwoomApi.get_code_list_by_market(market.market_id)
                if stock_code_list!=nil 		
			stock_code_list.map do |stock_code|
	        		stock_name=kiwoomApi.get_master_code_name(stock_code)
	                        stock_open_date=kiwoomApi.get_master_listed_stock_date(stock_code)
        	                tmp = Stock.create(
                	                :stock_code => stock_code,
                        	        :stock_name => stock_name,
                                	:stock_open_date => stock_open_date)
	                        puts tmp
			end
		end
	end
	puts "stocks.count 3= #{stocks.count}"
  end

  test "should show stock" do
    get :show, id: @stock
    assert_response :success
  end
end
