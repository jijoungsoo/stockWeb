class RealtimeContractsController < ApplicationController
  before_action :set_realtime_contract, only: [:show, :edit, :update, :destroy]

  # GET /realtime_contracts
  # GET /realtime_contracts.json
  def index
    @realtime_contracts = RealtimeContract.all.order("STOCK_DATE DESC")
  end

  # GET /realtime_contracts/1
  # GET /realtime_contracts/1.json
  def show
  end

  # GET /realtime_contracts/new
  def new
    @realtime_contract = RealtimeContract.new
  end

  # GET /realtime_contracts/1/edit
  def edit
  end

  # POST /realtime_contracts
  # POST /realtime_contracts.json
  def create
    @realtime_contract = RealtimeContract.new(realtime_contract_params)

    respond_to do |format|
      if @realtime_contract.save
        format.html { redirect_to @realtime_contract, notice: 'Realtime contract was successfully created.' }
        format.json { render :show, status: :created, location: @realtime_contract }
      else
        format.html { render :new }
        format.json { render json: @realtime_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /realtime_contracts/1
  # PATCH/PUT /realtime_contracts/1.json
  def update
    respond_to do |format|
      if @realtime_contract.update(realtime_contract_params)
        format.html { redirect_to @realtime_contract, notice: 'Realtime contract was successfully updated.' }
        format.json { render :show, status: :ok, location: @realtime_contract }
      else
        format.html { render :edit }
        format.json { render json: @realtime_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /realtime_contracts/1
  # DELETE /realtime_contracts/1.json
  def destroy
    @realtime_contract.destroy
    respond_to do |format|
      format.html { redirect_to realtime_contracts_url, notice: 'Realtime contract was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_realtime_contract
      @realtime_contract = RealtimeContract.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def realtime_contract_params
      params.require(:realtime_contract).permit(:stock_date, :stock_code, :current_price, :contrast_yesterday, :fluctuation_rate, :offered_price, :bid_price, :trade_quantity, :accumulated_trade_quantity, :accumulated_trade_price, :start_price, :high_price, :low_price, :contrast_yesterday_symbol, :yesterday_contrast_trade_quantity, :trade_amount_variation, :yesterday_contrast_trade_rate, :trade_turnover_ratio, :trade_cost, :contract_strength, :total_market_price, :arket_gubun, :ko_accessibility_rate, :upper_price_limit_time, :lower_price_limit_time)
    end
end
