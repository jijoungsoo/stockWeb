class Opt10085sController < ApplicationController
  before_action :set_opt10085, only: [:show]

  # GET /opt10085s
  # GET /opt10085s.json
  def index
    @opt10085s = Opt10085.all
  end

  # GET /opt10085s/1
  # GET /opt10085s/1.json
  def show
  end

  # GET /opt10085s/new
  def new
  end

  # POST /opt10085s
  # POST /opt10085s.json
  def create
    kiwoomApi = KiwoomApi.new();
    kiwoomApi.get_opt10085(ENV['ACCOUNT_NUMBER'])
    respond_to do |format|
        format.html { redirect_to opt10085s_path, notice: 'Opt10085 was successfully created.' }
        format.json { render :show, status: :created, location: opt10085s_path }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opt10085
      @opt10085 = Opt10085.find(params[:id])
    end
end
