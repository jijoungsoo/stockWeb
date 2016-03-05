class RealtimeBestOfferedAndBidsController < ApplicationController
  before_action :set_realtime_best_offered_and_bid, only: [:show, :edit, :update, :destroy]

  # GET /realtime_best_offered_and_bids
  # GET /realtime_best_offered_and_bids.json
  def index
    @realtime_best_offered_and_bids = RealtimeBestOfferedAndBid.all
  end

  # GET /realtime_best_offered_and_bids/1
  # GET /realtime_best_offered_and_bids/1.json
  def show
  end

  # GET /realtime_best_offered_and_bids/new
  def new
    @realtime_best_offered_and_bid = RealtimeBestOfferedAndBid.new
  end

  # GET /realtime_best_offered_and_bids/1/edit
  def edit
  end

  # POST /realtime_best_offered_and_bids
  # POST /realtime_best_offered_and_bids.json
  def create
    @realtime_best_offered_and_bid = RealtimeBestOfferedAndBid.new(realtime_best_offered_and_bid_params)

    respond_to do |format|
      if @realtime_best_offered_and_bid.save
        format.html { redirect_to @realtime_best_offered_and_bid, notice: 'Realtime best offered and bid was successfully created.' }
        format.json { render :show, status: :created, location: @realtime_best_offered_and_bid }
      else
        format.html { render :new }
        format.json { render json: @realtime_best_offered_and_bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /realtime_best_offered_and_bids/1
  # PATCH/PUT /realtime_best_offered_and_bids/1.json
  def update
    respond_to do |format|
      if @realtime_best_offered_and_bid.update(realtime_best_offered_and_bid_params)
        format.html { redirect_to @realtime_best_offered_and_bid, notice: 'Realtime best offered and bid was successfully updated.' }
        format.json { render :show, status: :ok, location: @realtime_best_offered_and_bid }
      else
        format.html { render :edit }
        format.json { render json: @realtime_best_offered_and_bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /realtime_best_offered_and_bids/1
  # DELETE /realtime_best_offered_and_bids/1.json
  def destroy
    @realtime_best_offered_and_bid.destroy
    respond_to do |format|
      format.html { redirect_to realtime_best_offered_and_bids_url, notice: 'Realtime best offered and bid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_realtime_best_offered_and_bid
      @realtime_best_offered_and_bid = RealtimeBestOfferedAndBid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def realtime_best_offered_and_bid_params
      params.require(:realtime_best_offered_and_bid).permit(:stock_date, :stock_code, :offered_price, :bid_price)
    end
end
