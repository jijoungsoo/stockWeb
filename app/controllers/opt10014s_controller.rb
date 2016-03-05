class Opt10014sController < ApplicationController
  before_action :set_opt10014, only: [:show, :edit, :update, :destroy]

  # GET /opt10014s
  # GET /opt10014s.json
  def index
    @opt10014s = Opt10014.order('stock_date desc').page params[:page]
  end

  # GET /opt10014s/1
  # GET /opt10014s/1.json
  def show
  end

  # GET /opt10014s/new
  def new
    @opt10014 = Opt10014.new
  end

  # GET /opt10014s/1/edit
  def edit
  end

  # POST /opt10014s
  # POST /opt10014s.json
  def create
    @opt10014 = Opt10014.new(opt10014_params)

    respond_to do |format|
      if @opt10014.save
        format.html { redirect_to @opt10014, notice: 'Opt10014 was successfully created.' }
        format.json { render :show, status: :created, location: @opt10014 }
      else
        format.html { render :new }
        format.json { render json: @opt10014.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opt10014s/1
  # PATCH/PUT /opt10014s/1.json
  def update
    respond_to do |format|
      if @opt10014.update(opt10014_params)
        format.html { redirect_to @opt10014, notice: 'Opt10014 was successfully updated.' }
        format.json { render :show, status: :ok, location: @opt10014 }
      else
        format.html { render :edit }
        format.json { render json: @opt10014.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opt10014s/1
  # DELETE /opt10014s/1.json
  def destroy
    @opt10014.destroy
    respond_to do |format|
      format.html { redirect_to opt10014s_url, notice: 'Opt10014 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opt10014
      @opt10014 = Opt10014.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def opt10014_params
      params.require(:opt10014).permit(:stock_date, :stock_code, :current_price, :contrast_symbol, :contrast_yesterday, :fluctuation_rate, :trade_quantity, :short_selling_quantity, :trade_rate, :short_selling_trade_price, :short_selling_average_price)
    end
end
