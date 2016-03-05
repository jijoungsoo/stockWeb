class RealtimePricesController < ApplicationController
  before_action :set_realtime_price, only: [:show, :edit, :update, :destroy]

  # GET /realtime_prices
  # GET /realtime_prices.json
  def index
    @realtime_prices = RealtimePrice.all
  end

  # GET /realtime_prices/1
  # GET /realtime_prices/1.json
  def show
  end

  # GET /realtime_prices/new
  def new
    @realtime_price = RealtimePrice.new
  end

  # GET /realtime_prices/1/edit
  def edit
  end

  # POST /realtime_prices
  # POST /realtime_prices.json
  def create
    @realtime_price = RealtimePrice.new(realtime_price_params)

    respond_to do |format|
      if @realtime_price.save
        format.html { redirect_to @realtime_price, notice: 'Realtime price was successfully created.' }
        format.json { render :show, status: :created, location: @realtime_price }
      else
        format.html { render :new }
        format.json { render json: @realtime_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /realtime_prices/1
  # PATCH/PUT /realtime_prices/1.json
  def update
    respond_to do |format|
      if @realtime_price.update(realtime_price_params)
        format.html { redirect_to @realtime_price, notice: 'Realtime price was successfully updated.' }
        format.json { render :show, status: :ok, location: @realtime_price }
      else
        format.html { render :edit }
        format.json { render json: @realtime_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /realtime_prices/1
  # DELETE /realtime_prices/1.json
  def destroy
    @realtime_price.destroy
    respond_to do |format|
      format.html { redirect_to realtime_prices_url, notice: 'Realtime price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_realtime_price
      @realtime_price = RealtimePrice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def realtime_price_params
      params.require(:realtime_price).permit(:stock_date, :stock_code, :current_price, :contrast_yesterday, :fluctuation_rate, :offered_price, :bid_price, :accumulated_trade_quantity, :accumulated_trade_price, :start_price, :high_price, :low_price, :contrast_yesterday_symbol, :contrast_yesterday_symbol, :yesterday_contrast_trade_quantity, :trade_amount_variation, :yesterday_contrast_trade_rate, :trade_turnover_ratio, :trade_cost, :total_market_price, :upper_price_limit_time, :lower_price_limit_time)
    end
end
