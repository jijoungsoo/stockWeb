class Opt10059TwoOnesController < ApplicationController
  before_action :set_opt10059_two_one, only: [:show, :edit, :update, :destroy]

  # GET /opt10059_two_ones
  # GET /opt10059_two_ones.json
  def index
    @opt10059_two_ones = Opt10059TwoOne.order("stock_date desc").page params[:page]
  end

  # GET /opt10059_two_ones/1
  # GET /opt10059_two_ones/1.json
  def show
  end

  # GET /opt10059_two_ones/new
  def new
    @opt10059_two_one = Opt10059TwoOne.new
  end

  # GET /opt10059_two_ones/1/edit
  def edit
  end

  # POST /opt10059_two_ones
  # POST /opt10059_two_ones.json
  def create
    @opt10059_two_one = Opt10059TwoOne.new(opt10059_two_one_params)

    respond_to do |format|
      if @opt10059_two_one.save
        format.html { redirect_to @opt10059_two_one, notice: 'Opt10059 two one was successfully created.' }
        format.json { render :show, status: :created, location: @opt10059_two_one }
      else
        format.html { render :new }
        format.json { render json: @opt10059_two_one.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opt10059_two_ones/1
  # PATCH/PUT /opt10059_two_ones/1.json
  def update
    respond_to do |format|
      if @opt10059_two_one.update(opt10059_two_one_params)
        format.html { redirect_to @opt10059_two_one, notice: 'Opt10059 two one was successfully updated.' }
        format.json { render :show, status: :ok, location: @opt10059_two_one }
      else
        format.html { render :edit }
        format.json { render json: @opt10059_two_one.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opt10059_two_ones/1
  # DELETE /opt10059_two_ones/1.json
  def destroy
    @opt10059_two_one.destroy
    respond_to do |format|
      format.html { redirect_to opt10059_two_ones_url, notice: 'Opt10059 two one was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opt10059_two_one
      @opt10059_two_one = Opt10059TwoOne.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def opt10059_two_one_params
      params.require(:opt10059_two_one).permit(:stock_date, :stock_code, :current_price, :contrast_symbol, :contrast_yesterday, :fluctuation_rate, :accumulated_trade_price, :domestic_investor, :foreign_investor, :institution, :financial_investment, :insurance, :investment_trust, :etc_financial, :bank, :pension_fund, :private_equity_fund, :nation, :etc_corporation, :foregin_investment_in_korea, :buyOrSell, :priceOrAmount)
    end
end
