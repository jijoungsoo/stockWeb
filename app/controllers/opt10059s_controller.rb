class Opt10059sController < ApplicationController
  before_action :set_opt10059, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction
  # GET /opt10059s
  # GET /opt10059s.json
  def index
    render "opt10059s/index",:layout=>false
  end

  def list
    start_date=params[:start_date];
    end_date=params[:end_date];
    stock_code=params[:stock_code];

    start_date=(DateTime.now()-14).strftime("%Y-%m-%d") if start_date==nil
    end_date=DateTime.now().strftime("%Y-%m-%d") if end_date==nil

    @opt10059s = Opt10059.where("stock_date between str_to_date('#{start_date}','%Y-%m-%d') and str_to_date('#{end_date}','%Y-%m-%d')")
                           .where("'#{stock_code}'='' OR  stock_code='#{stock_code}'")
                           .order('stock_date desc')
                           .order(sort_column + " " + sort_direction)
                           .page params[:page]
  end

  # GET /opt10059s/1
  # GET /opt10059s/1.json
  def show
  end

  # GET /opt10059s/new
  def new
    @opt10059 = Opt10059.new
  end

  # GET /opt10059s/1/edit
  def edit
  end

  # POST /opt10059s
  # POST /opt10059s.json
  def create
    @opt10059 = Opt10059.new(opt10059_params)

    respond_to do |format|
      if @opt10059.save
        format.html { redirect_to @opt10059, notice: 'Opt10059 was successfully created.' }
        format.json { render :show, status: :created, location: @opt10059 }
      else
        format.html { render :new }
        format.json { render json: @opt10059.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opt10059s/1
  # PATCH/PUT /opt10059s/1.json
  def update
    respond_to do |format|
      if @opt10059.update(opt10059_params)
        format.html { redirect_to @opt10059, notice: 'Opt10059 was successfully updated.' }
        format.json { render :show, status: :ok, location: @opt10059 }
      else
        format.html { render :edit }
        format.json { render json: @opt10059.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opt10059s/1
  # DELETE /opt10059s/1.json
  def destroy
    @opt10059.destroy
    respond_to do |format|
      format.html { redirect_to opt10059s_url, notice: 'Opt10059 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opt10059
      @opt10059 = Opt10059.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def opt10059_params
      params.require(:opt10059).permit(:stock_date, :stock_code, :current_price, :contrast_symbol, :contrast_yesterday, :fluctuation_rate, :accumulated_trade_price, :buy_price_domestic_investor, :buy_amount_domestic_investor, :sell_price_domestic_investor, :sell_amount_domestic_investor, :buy_price_foreign_investor, :buy_amount_foreign_investor, :sell_price_foreign_investor, :sell_amount_foreign_investor, :buy_price_institution, :buy_amount_institution, :sell_price_institution, :sell_amount_institution, :buy_price_financial_investment, :buy_amount_financial_investment, :sell_price_financial_investment, :sell_amount_financial_investment, :buy_price_insurance, :buy_amount_insurance, :sell_price_insurance, :sell_amount_insurance, :buy_price_investment_trust, :buy_amount_investment_trust, :sell_price_investment_trust, :sell_amount_investment_trust, :buy_price_etc_financial, :buy_amount_etc_financial, :sell_price_etc_financial, :sell_amount_etc_financial, :buy_price_bank, :buy_amount_bank, :sell_price_bank, :sell_amount_bank, :buy_price_pension_fund, :buy_amount_pension_fund, :sell_price_pension_fund, :sell_price_pension_fund, :buy_price_private_equity_fund, :buy_amount_private_equity_fund, :sell_price_private_equity_fund, :sell_amount_private_equity_fund, :buy_price_nation, :buy_price_nation, :sell_price_nation, :sell_amount_nation, :buy_price_etc_corporation, :buy_amount_etc_corporation, :sell_price_etc_corporation, :sell_amount_etc_corporation, :buy_price_foregin_investment_in_korea, :buy_amount_foregin_investment_in_korea, :sell_price_foregin_investment_in_korea, :sell_amount_foregin_investment_in_korea)
    end

    def sort_column
      if(sort_direction!='')
        Opt10059.column_names.include?(params[:sort]) ? params[:sort] : ""
      else
        return ""
      end
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : ""
    end
end
