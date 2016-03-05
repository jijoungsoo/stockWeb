class ConditionNamesController < ApplicationController
  before_action :set_condition_name, only: [:show, :edit, :update, :destroy]

  # GET /condition_names
  # GET /condition_names.json
  def index
    @condition_names = ConditionName.all
  end

  # GET /condition_names/1
  # GET /condition_names/1.json
  def show
  end

  # GET /condition_names/new
  def new
    @condition_name = ConditionName.new
  end

  # GET /condition_names/1/edit
  def edit
  end

  # POST /condition_names
  # POST /condition_names.json
  def create
    @condition_name = ConditionName.new(condition_name_params)

    respond_to do |format|
      if @condition_name.save
        format.html { redirect_to @condition_name, notice: 'Condition name was successfully created.' }
        format.json { render :show, status: :created, location: @condition_name }
      else
        format.html { render :new }
        format.json { render json: @condition_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /condition_names/1
  # PATCH/PUT /condition_names/1.json
  def update
    respond_to do |format|
      if @condition_name.update(condition_name_params)
        format.html { redirect_to @condition_name, notice: 'Condition name was successfully updated.' }
        format.json { render :show, status: :ok, location: @condition_name }
      else
        format.html { render :edit }
        format.json { render json: @condition_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /condition_names/1
  # DELETE /condition_names/1.json
  def destroy
    @condition_name.destroy
    respond_to do |format|
      format.html { redirect_to condition_names_url, notice: 'Condition name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_condition_name
      @condition_name = ConditionName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def condition_name_params
      params.require(:condition_name).permit(:condition_name, :nIndex)
    end
end
