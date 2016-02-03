class MarketsController < ApplicationController
  before_action :set_market, only: [:show]

  # GET /markets
  # GET /markets.json
  def index
    @markets = Market.all
  end

  # GET /markets/1
  # GET /markets/1.json
  def show
  end

  # GET /markets/new
  def new
  end

  # POST /markets
  # POST /markets.json
  def create
    markets = Market.all
    markets.delete_all
    tmp=Market.new.from_json '{"market_code": 0, "market_name": "장내"}'
    tmp.save
    tmp=Market.new.from_json '{"market_code": 3, "market_name": "ELW"}'
    tmp.save
    tmp=Market.new.from_json '{"market_code": 4, "market_name": "뮤추얼펀드"}'
    tmp.save
    tmp=Market.new.from_json '{"market_code": 5, "market_name": "신주인수권"}'
    tmp.save
    tmp=Market.new.from_json '{"market_code": 6, "market_name": "리츠1"}'
    tmp.save
    tmp=Market.new.from_json '{"market_code": 7, "market_name": "리츠2"}'
    tmp.save
    tmp=Market.new.from_json '{"market_code": 8, "market_name": "하이일펀드"}'
    tmp.save
    tmp=Market.new.from_json '{"market_code": 10, "market_name": "코스닥"}'
    tmp.save
    tmp=Market.new.from_json '{"market_code": 30, "market_name": "제3시장"}'
    tmp.save


    respond_to do |format|
        format.html { redirect_to markets_path, notice: 'Market was successfully created.' }
        format.json { render :show, status: :created, location: markets_path }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_market
      @market = Market.find(params[:id])
    end
end
