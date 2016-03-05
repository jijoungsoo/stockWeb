class Opt10075sController < ApplicationController
  before_action :set_opt10075, only: [:show, :edit, :update, :destroy]

  # GET /opt10075s
  # GET /opt10075s.json
  def index
    @opt10075s = Opt10075.all
  end

  # GET /opt10075s/1
  # GET /opt10075s/1.json
  def show
  end

  # GET /opt10075s/new
  def new
    @opt10075 = Opt10075.new
  end

  # GET /opt10075s/1/edit
  def edit
  end

  # POST /opt10075s
  # POST /opt10075s.json
  def create
    @opt10075 = Opt10075.new(opt10075_params)

    respond_to do |format|
      if @opt10075.save
        format.html { redirect_to @opt10075, notice: 'Opt10075 was successfully created.' }
        format.json { render :show, status: :created, location: @opt10075 }
      else
        format.html { render :new }
        format.json { render json: @opt10075.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opt10075s/1
  # PATCH/PUT /opt10075s/1.json
  def update
    respond_to do |format|
      if @opt10075.update(opt10075_params)
        format.html { redirect_to @opt10075, notice: 'Opt10075 was successfully updated.' }
        format.json { render :show, status: :ok, location: @opt10075 }
      else
        format.html { render :edit }
        format.json { render json: @opt10075.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opt10075s/1
  # DELETE /opt10075s/1.json
  def destroy
    @opt10075.destroy
    respond_to do |format|
      format.html { redirect_to opt10075s_url, notice: 'Opt10075 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opt10075
      @opt10075 = Opt10075.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def opt10075_params
      params.require(:opt10075).permit(:contract_time, :order_number, :manager_number, :stock_code, :business_gubun, :order_status, :stock_name, :order_quantity, :order_price, :not_contract_quantity, :contract_total_amount, :last_order_number, :order_gubun, :trade_gubun, :contract_number, :contract_price, :contract_quantity, :current_price, :offered_price, :bid_price, :contract_price_unit, :contract_price_quantity, :today_commission, :today_tax, :domestic_investor)
    end
end
