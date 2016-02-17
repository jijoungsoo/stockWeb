class Opt10081sController < ApplicationController
  before_action :set_opt10081, only: [:show ]
  include JijsHelper
  # GET /opt10081
  # GET /opt10081.json
  def index
      @opt10081s = Opt10081.limit(5).offset(30)
     @opt10081s = Opt10081.order("stock_date desc").page params[:page]
#    render "opt10081s/index",:layout=>true
  end

  # GET /opt10081/1
  # GET /opt10081/1.json
  def show
  end

  # GET /opt10081/new
  def new
  end

  # GET /opt10081/list
  def list
  end

  def create
        #render head :ok
        puts params
        startDate = params[:startDate]
        endDate = params[:endDate]
#  puts startDate
#  puts endDate
#     render :text =>"TEST"
#        render :text =>"123123"
#        return
	stocks=Stock.all
        kiwoomApi = KiwoomApi.new()
 #       strDate = Time.now.strftime("%Y%m%d");
 #       spell = Time.now.strftime("%Y%m%d");
        d1 = Time.now;
#        return head :ok 
        stocks.each do |stock|
	       kiwoomApi.get_opt10081(stock.stock_code,startDate,endDate);
              # sleep 0.2  # 받는쪽에서 receive까지 한다음처리를 하도록 하기 때문에 1초에서 0.2로 대기시간 줄임
        end
        d2 = Time.now;
        diff1=d2-d1;
#        diff2 = dateBeautifyBySecond(diff1)

        respond_to do |format|
                format.html { redirect_to opt10081s_path, notice: "created opt10081; spent time .{diff2}" }
                format.json { render :show, status: :created, location: opt10081s_path}
        end
  end


private
    # Use callbacks to share common setup or constraints between actions.
    def set_opt10081
      @opt10081 = Opt10081.find(params[:id])
    end


end
