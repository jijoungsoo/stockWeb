class Opt10001sController < ApplicationController
  before_action :set_opt10001, only: [:show, :edit, :update, :destroy]

  # GET /opt10001s
  # GET /opt10001s.json
  def index
    @opt10001s = Opt10001.all
  end

  # GET /opt10001s/1
  # GET /opt10001s/1.json
  def show
  end

  # GET /opt10001s/new
  def new
    @opt10001 = Opt10001.new
  end

  # GET /opt10001s/1/edit
  def edit
  end

  # POST /opt10001s
  # POST /opt10001s.json
  def create
    @opt10001 = Opt10001.new(opt10001_params)

    respond_to do |format|
      if @opt10001.save
        format.html { redirect_to @opt10001, notice: 'Opt10001 was successfully created.' }
        format.json { render :show, status: :created, location: @opt10001 }
      else
        format.html { render :new }
        format.json { render json: @opt10001.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opt10001s/1
  # PATCH/PUT /opt10001s/1.json
  def update
    respond_to do |format|
      if @opt10001.update(opt10001_params)
        format.html { redirect_to @opt10001, notice: 'Opt10001 was successfully updated.' }
        format.json { render :show, status: :ok, location: @opt10001 }
      else
        format.html { render :edit }
        format.json { render json: @opt10001.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opt10001s/1
  # DELETE /opt10001s/1.json
  def destroy
    @opt10001.destroy
    respond_to do |format|
      format.html { redirect_to opt10001s_url, notice: 'Opt10001 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opt10001
      @opt10001 = Opt10001.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def opt10001_params
      params.require(:opt10001).permit(:stock_date, :stock_code, :stock_name, :settling_account_month, :face_value, :capital, :stock_count, :credit_rate, :,, :precision, :scale, :year_high_price, :year_low_price, :total_market_price, :total_market_price_rate, :,, :precision, :scale, :foreigner_exhaustion_rate, :,, :precision, :scale, :substitute_price, :per, :,, :precision, :scale, :eps, :,, :precision, :scale, :roe, :,, :precision, :scale, :pbr, :,, :precision, :scale, :ev, :,, :precision, :scale, :bps, :,, :precision, :scale, :sales, :business_profits, :d250_high_price, :d250_low_price, :start_price, :high_price, :low_price, :upper_price_limit, :lower_price_limit, :expectation_contract_price, :, :expectation_contract_quantity, :d250_high_date, :d250_high_rate, :,, :precision, :scale, :d250_low_date, :d250_low_rate, :,, :precision, :scale, :current_price, :contrast_symbol, :contrast_yesterday, :fluctuation_rate, :,, :precision, :scale, :trade_quantity, :trade_contrast, :,, :precision, :scale, :face_value_unit)
    end
end
