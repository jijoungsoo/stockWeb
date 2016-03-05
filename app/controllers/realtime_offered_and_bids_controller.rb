class RealtimeOfferedAndBidsController < ApplicationController
  before_action :set_realtime_offered_and_bid, only: [:show, :edit, :update, :destroy]

  # GET /realtime_offered_and_bids
  # GET /realtime_offered_and_bids.json
  def index
    @realtime_offered_and_bids = RealtimeOfferedAndBid.all
  end

  # GET /realtime_offered_and_bids/1
  # GET /realtime_offered_and_bids/1.json
  def show
  end

  # GET /realtime_offered_and_bids/new
  def new
    @realtime_offered_and_bid = RealtimeOfferedAndBid.new
  end

  # GET /realtime_offered_and_bids/1/edit
  def edit
  end

  # POST /realtime_offered_and_bids
  # POST /realtime_offered_and_bids.json
  def create
    @realtime_offered_and_bid = RealtimeOfferedAndBid.new(realtime_offered_and_bid_params)

    respond_to do |format|
      if @realtime_offered_and_bid.save
        format.html { redirect_to @realtime_offered_and_bid, notice: 'Realtime offered and bid was successfully created.' }
        format.json { render :show, status: :created, location: @realtime_offered_and_bid }
      else
        format.html { render :new }
        format.json { render json: @realtime_offered_and_bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /realtime_offered_and_bids/1
  # PATCH/PUT /realtime_offered_and_bids/1.json
  def update
    respond_to do |format|
      if @realtime_offered_and_bid.update(realtime_offered_and_bid_params)
        format.html { redirect_to @realtime_offered_and_bid, notice: 'Realtime offered and bid was successfully updated.' }
        format.json { render :show, status: :ok, location: @realtime_offered_and_bid }
      else
        format.html { render :edit }
        format.json { render json: @realtime_offered_and_bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /realtime_offered_and_bids/1
  # DELETE /realtime_offered_and_bids/1.json
  def destroy
    @realtime_offered_and_bid.destroy
    respond_to do |format|
      format.html { redirect_to realtime_offered_and_bids_url, notice: 'Realtime offered and bid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_realtime_offered_and_bid
      @realtime_offered_and_bid = RealtimeOfferedAndBid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def realtime_offered_and_bid_params
      params.require(:realtime_offered_and_bid).permit(:stock_date, :stock_code, :offered_price1, :offered_quantity1, :offered_price_contrast1, :bid_price1, :bid_quantity1, :bid_price_contrast1, :offered_price2, :offered_quantity2, :offered_price_contrast2, :bid_price2, :bid_quantity2, :bid_price_contrast2, :offered_price3, :offered_quantity3, :offered_price_contrast3, :bid_price3, :bid_quantity3, :bid_price_contrast3, :offered_price4, :offered_quantity4, :offered_price_contrast4, :bid_price4, :bid_quantity4, :bid_price_contrast4, :offered_price5, :offered_quantity5, :offered_price_contrast5, :bid_price5, :bid_quantity5, :bid_price_contrast5, :offered_price6, :offered_quantity6, :offered_price_contrast6, :bid_price6, :bid_quantity6, :bid_price_contrast6, :offered_price7, :offered_quantity7, :offered_price_contrast7, :bid_price7, :bid_quantity7, :bid_price_contrast7, :offered_price8, :offered_quantity8, :offered_price_contrast8, :bid_price8, :bid_quantity8, :bid_price_contrast8, :offered_price9, :offered_quantity9, :offered_price_contrast9, :bid_price9, :bid_quantity9, :bid_price_contrast9, :offered_price10, :offered_quantity10, :offered_price_contrast10, :bid_price10, :bid_quantity10, :bid_price_contrast10, :offered_total_residual_quantity, :offered_total_residual_quantity_contrast, :bid_total_residual_quantity, :bid_total_residual_quantity_contrast, :expectation_contract_price, :expectation_contract_quantity, :net_buy_residual_quantity, :bid_rate, :net_sell_residual_quantity, :offered_rate, :expectation_contract_yesterday_contrast_price, :expectation_contract_yesterday_contrast_fluctuation_rate, :expectation_contract_yesterday_contrast_symbol, :expectation_contract_price1, :expectation_contract_quantity1, :expectation_contract_yesterday_contrast_symbol1, :expectation_contract_yesterday_contrast_price1, :expectation_contract_yesterday_contrast_fluctuation_rate1, :lp_offered_quantity1, :lp_bid_quantity1, :lp_offered_quantity2, :lp_bid_quantity2, :lp_offered_quantity3, :lp_bid_quantity3, :lp_offered_quantity4, :lp_bid_quantity4, :lp_offered_quantity5, :lp_bid_quantity5, :lp_offered_quantity6, :lp_bid_quantity6, :lp_offered_quantity7, :lp_bid_quantity7, :lp_offered_quantity8, :lp_bid_quantity8, :lp_offered_quantity9, :lp_bid_quantity9, :lp_offered_quantity10, :lp_bid_quantity10, :accumulated_trade_quantity, :expectation_contract_yesterday_contrast_rate, :market_gubun, :investor_ticker)
    end
end
