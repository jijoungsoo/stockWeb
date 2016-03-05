class StocksController < ApplicationController
  before_action :set_stock, only: [:show ]

  # GET /stocks
  # GET /stocks.json
  def index
    @stocks = Stock.all
  end

  # GET /stocks/1
  # GET /stocks/1.json
  def show
  end

  # GET /stocks/new
  def new
  end

  # GET /stocks/list
  def list
  end

  # POST /stocks
  # POST /stocks.json
  def create
	markets=Market.all
        stocks=Stock.all
        stocks.delete_all
        kiwoomApi = KiwoomApi.new()
        stock_code_list_all=[]
        market_code_list=[]
        markets.each do |market|
                stock_code_list=kiwoomApi.get_code_list_by_market(market.market_code)

                if stock_code_list!=nil
                        stock_code_list_all=stock_code_list_all+stock_code_list
                        stock_code_list.map do |stock_code|
                            market_code_list<<[market.market_code,stock_code]
                        end
                end
        end
	      stock_code_list_all.uniq!
        stock_code_list_all.each do |stock_code|
                stock_name=kiwoomApi.get_master_code_name(stock_code)
                stock_open_date=kiwoomApi.get_master_listed_stock_date(stock_code)
                tmp = Stock.create(
                  :stock_code => stock_code,
                  :stock_name => stock_name,
                  :stock_open_date => stock_open_date)
                  puts tmp
        end

	market_stock = MarketStock.all
        market_stock.delete_all
        market_code_list.each do |market_stock_code|
		MarketStock.create(:market_code_id=> market_stock_code[0],:stock_code_id=>market_stock_code[1])
        end

	respond_to do |format|
	    	format.html { redirect_to stocks_path, notice: "Stocks was successfully created.#{markets.length}" }
        	format.json { render :show, status: :created, location: stocks_path}
	end

  end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock
      @stock = Stock.find(params[:id])
    end
end
