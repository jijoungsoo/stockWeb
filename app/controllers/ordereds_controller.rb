class OrderedsController < ApplicationController
  before_action :set_ordered, only: [:show, :edit, :update, :destroy]

  # GET /ordereds
  # GET /ordereds.json
  def index
    @ordereds = Ordered.all
  end

  # GET /ordereds/1
  # GET /ordereds/1.json
  def show
  end

  # GET /ordereds/new
  def new
    @ordered = Ordered.new
  end

  # GET /ordereds/1/edit
  def edit
  end

  # POST /ordereds
  # POST /ordereds.json
  def create
    @ordered = Ordered.new(ordered_params)

    respond_to do |format|
      if @ordered.save
        format.html { redirect_to @ordered, notice: 'Ordered was successfully created.' }
        format.json { render :show, status: :created, location: @ordered }
      else
        format.html { render :new }
        format.json { render json: @ordered.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordereds/1
  # PATCH/PUT /ordereds/1.json
  def update
    respond_to do |format|
      if @ordered.update(ordered_params)
        format.html { redirect_to @ordered, notice: 'Ordered was successfully updated.' }
        format.json { render :show, status: :ok, location: @ordered }
      else
        format.html { render :edit }
        format.json { render json: @ordered.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordereds/1
  # DELETE /ordereds/1.json
  def destroy
    @ordered.destroy
    respond_to do |format|
      format.html { redirect_to ordereds_url, notice: 'Ordered was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordered
      @ordered = Ordered.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordered_params
      params.require(:ordered).permit(:contract_time, :account_number, :order_number, :manager_number, :stock_code, :order_business_classification, :order_status, :stock_name, :order_quantity, :order_price, :not_contract_quantity, :contract_total_amount, :last_order_number, :order_gubun, :trade_gubun, :order_type, :contract_number, :contract_price, :current_price, :offered_price, :bid_price, :contract_price_unit, :contract_price_quantity, :today_trade_commission, :today_tax)
    end
end
