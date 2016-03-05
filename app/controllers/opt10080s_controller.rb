class Opt10080sController < ApplicationController
  before_action :set_opt10080, only: [:show, :edit, :update, :destroy]

  # GET /opt10080s
  # GET /opt10080s.json
  def index
    @opt10080s = Opt10080.all
  end

  # GET /opt10080s/1
  # GET /opt10080s/1.json
  def show
  end

  # GET /opt10080s/new
  def new
    @opt10080 = Opt10080.new
  end

  # GET /opt10080s/1/edit
  def edit
  end

  # POST /opt10080s
  # POST /opt10080s.json
  def create
    @opt10080 = Opt10080.new(opt10080_params)

    respond_to do |format|
      if @opt10080.save
        format.html { redirect_to @opt10080, notice: 'Opt10080 was successfully created.' }
        format.json { render :show, status: :created, location: @opt10080 }
      else
        format.html { render :new }
        format.json { render json: @opt10080.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opt10080s/1
  # PATCH/PUT /opt10080s/1.json
  def update
    respond_to do |format|
      if @opt10080.update(opt10080_params)
        format.html { redirect_to @opt10080, notice: 'Opt10080 was successfully updated.' }
        format.json { render :show, status: :ok, location: @opt10080 }
      else
        format.html { render :edit }
        format.json { render json: @opt10080.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opt10080s/1
  # DELETE /opt10080s/1.json
  def destroy
    @opt10080.destroy
    respond_to do |format|
      format.html { redirect_to opt10080s_url, notice: 'Opt10080 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opt10080
      @opt10080 = Opt10080.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def opt10080_params
      params.require(:opt10080).permit(:stock_code, :current_price, :trade_quantity, :contract_time, :start_price, :high_price, :low_price, :modify_stock_gubun, :modify_rate, :,, :precision, :scale, :big_type_of_business, :small_type_of_business, :stock_info, :modify_stock_event, :yesterday_current_price)
    end
end
