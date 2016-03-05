class Opt10059OneTwosController < ApplicationController
  before_action :set_opt10059_one_two, only: [:show, :edit, :update, :destroy]

  # GET /opt10059_one_twos
  # GET /opt10059_one_twos.json
  def index
    @opt10059_one_twos = Opt10059OneTwo.order("stock_date desc").page params[:page]
  end

  # GET /opt10059_one_twos/1
  # GET /opt10059_one_twos/1.json
  def show
  end

  # GET /opt10059_one_twos/new
  def new
    @opt10059_one_two = Opt10059OneTwo.new
  end

  # GET /opt10059_one_twos/1/edit
  def edit
  end

  # POST /opt10059_one_twos
  # POST /opt10059_one_twos.json
  def create
    @opt10059_one_two = Opt10059OneTwo.new(opt10059_one_two_params)

    respond_to do |format|
      if @opt10059_one_two.save
        format.html { redirect_to @opt10059_one_two, notice: 'Opt10059 one two was successfully created.' }
        format.json { render :show, status: :created, location: @opt10059_one_two }
      else
        format.html { render :new }
        format.json { render json: @opt10059_one_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opt10059_one_twos/1
  # PATCH/PUT /opt10059_one_twos/1.json
  def update
    respond_to do |format|
      if @opt10059_one_two.update(opt10059_one_two_params)
        format.html { redirect_to @opt10059_one_two, notice: 'Opt10059 one two was successfully updated.' }
        format.json { render :show, status: :ok, location: @opt10059_one_two }
      else
        format.html { render :edit }
        format.json { render json: @opt10059_one_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opt10059_one_twos/1
  # DELETE /opt10059_one_twos/1.json
  def destroy
    @opt10059_one_two.destroy
    respond_to do |format|
      format.html { redirect_to opt10059_one_twos_url, notice: 'Opt10059 one two was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opt10059_one_two
      @opt10059_one_two = Opt10059OneTwo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def opt10059_one_two_params
      params.require(:opt10059_one_two).permit(:stock_date, :stock_code, :current_price, :contrast_symbol, :contrast_yesterday, :fluctuation_rate, :accumulated_trade_price, :domestic_investor, :foreign_investor, :institution, :financial_investment, :insurance, :investment_trust, :etc_financial, :bank, :pension_fund, :private_equity_fund, :nation, :etc_corporation, :foregin_investment_in_korea, :buyOrSell, :priceOrAmount)
    end
end
