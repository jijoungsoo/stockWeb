class Opw00003sController < ApplicationController
  before_action :set_opw00003, only: [:show]

  # GET /opw00003s
  # GET /opw00003s.json
  def index
    @opw00003s = Opw00003.all
  end

  # GET /opw00003s/1
  # GET /opw00003s/1.json
  def show
  end

  # GET /opw00003s/new
  def new
  end

  # POST /opw00003s
  # POST /opw00003s.json
  def create
    #Opw00003.delete_all 받는쪽에서 지우자.
    kiwoomApi = KiwoomApi.new();
    kiwoomApi.get_opw00003(ENV['ACCOUNT_NUMBER'],ENV['PWD'])
    #위에 꺼는 응답이 없음 상대쪽에서도 soap으로 우리쪽에 쏜다.
    respond_to do |format|
        format.html { redirect_to opw00003s_path, notice: 'Opw00003 was successfully created.' }
        format.json { render :show, status: :created, location: opw00003s_path }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opw00003
      @opw00003 = Opw00003.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def opw00003_params
      params.require(:opw00003).permit(:search_date, :account_number, :estimation_deposition_property)
    end
end
