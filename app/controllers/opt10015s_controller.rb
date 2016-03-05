class Opt10015sController < ApplicationController
  before_action :set_opt10015, only: [:show, :edit, :update, :destroy]

  # GET /opt10015s
  # GET /opt10015s.json
  def index
		render "opt10015s/index",:layout=>false
  end

  def list
		start_date=params[:start_date];
    end_date=params[:end_date];
    stock_code=params[:stock_code];

    start_date=DateTime.now().strftime("%Y-%m-%d") if start_date==nil
    end_date=DateTime.now().strftime("%Y-%m-%d") if end_date==nil

    @opt10015s = Opt10015.where("stock_date between str_to_date('#{start_date}','%Y-%m-%d') and str_to_date('#{end_date}','%Y-%m-%d')")
														.where("'#{stock_code}'='' OR  stock_code='#{stock_code}'")
														.order('stock_date desc').page params[:page]
  end

  # GET /opt10015s/1
  # GET /opt10015s/1.json
  def show
  end

  # GET /opt10015s/new
  def new
    @opt10015 = Opt10015.new
  end

  # GET /opt10015s/1/edit
  def edit
  end

  # POST /opt10015s
  # POST /opt10015s.json
  def create
    @opt10015 = Opt10015.new(opt10015_params)

    respond_to do |format|
      if @opt10015.save
        format.html { redirect_to @opt10015, notice: 'Opt10015 was successfully created.' }
        format.json { render :show, status: :created, location: @opt10015 }
      else
        format.html { render :new }
        format.json { render json: @opt10015.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opt10015s/1
  # PATCH/PUT /opt10015s/1.json
  def update
    respond_to do |format|
      if @opt10015.update(opt10015_params)
        format.html { redirect_to @opt10015, notice: 'Opt10015 was successfully updated.' }
        format.json { render :show, status: :ok, location: @opt10015 }
      else
        format.html { render :edit }
        format.json { render json: @opt10015.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opt10015s/1
  # DELETE /opt10015s/1.json
  def destroy
    @opt10015.destroy
    respond_to do |format|
      format.html { redirect_to opt10015s_url, notice: 'Opt10015 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opt10015
      @opt10015 = Opt10015.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def opt10015_params
      params.require(:opt10015).permit(:stock_date, :stock_code, :current_price, :contrast_symbol, :contrast_yesterday, :fluctuation_rate, :trade_quantity, :trade_price, :before_market_trade_quantity, :before_market_trade_rate, :market_trade_quantity, :market_trade_rate, :after_market_trade_quantity, :after_market_trade_rate, :sum3, :between_trade_quantity)
    end
end
