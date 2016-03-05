class ScreenInfosController < ApplicationController
  before_action :set_screen_info, only: [:show, :edit, :update, :destroy]

  # GET /screen_infos
  # GET /screen_infos.json
  def index
    @screen_infos = ScreenInfo.all
  end

  # GET /screen_infos/1
  # GET /screen_infos/1.json
  def show
  end

  # GET /screen_infos/new
  def new
    @screen_info = ScreenInfo.new
  end

  # GET /screen_infos/1/edit
  def edit
  end

  # POST /screen_infos
  # POST /screen_infos.json
  def create
    @screen_info = ScreenInfo.new(screen_info_params)

    respond_to do |format|
      if @screen_info.save
        format.html { redirect_to @screen_info, notice: 'Screen info was successfully created.' }
        format.json { render :show, status: :created, location: @screen_info }
      else
        format.html { render :new }
        format.json { render json: @screen_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /screen_infos/1
  # PATCH/PUT /screen_infos/1.json
  def update
    respond_to do |format|
      if @screen_info.update(screen_info_params)
        format.html { redirect_to @screen_info, notice: 'Screen info was successfully updated.' }
        format.json { render :show, status: :ok, location: @screen_info }
      else
        format.html { render :edit }
        format.json { render json: @screen_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /screen_infos/1
  # DELETE /screen_infos/1.json
  def destroy
    @screen_info.destroy
    respond_to do |format|
      format.html { redirect_to screen_infos_url, notice: 'Screen info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_screen_info
      @screen_info = ScreenInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def screen_info_params
      params.require(:screen_info).permit(:screen_number, :tr_code, :rq_name)
    end
end
