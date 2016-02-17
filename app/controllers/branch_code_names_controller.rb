class BranchCodeNamesController < ApplicationController
  before_action :set_branch_code_name, only: [:show]

  # GET /branch_code_names
  # GET /branch_code_names.json
  def index
    @branch_code_names = BranchCodeName.all
  end

  # GET /branch_code_names/1
  # GET /branch_code_names/1.json
  def show
  end

  # GET /branch_code_names/new
  def new
  end

  # POST /branch_code_names
  # POST /branch_code_names.json
  def create
    branch_code_names = BranchCodeName.all
    branch_code_names.delete_all
    kiwoomApi = KiwoomApi.new();
    tmp=kiwoomApi.get_branch_code_name();
    puts tmp;
    tmp.each do |key,value|
        tmp1=BranchCodeName.create(
               :branch_code =>key,
               :branch_name =>value[0] )
    end

    respond_to do |format|
        format.html { redirect_to branch_code_names_path, notice: 'Branch code name was successfully created.' }
        format.json { render :show, status: :created, location: branch_code_names_path }
    end
  end

  # PATCH/PUT /branch_code_names/1
  # PATCH/PUT /branch_code_names/1.json
  def update
    respond_to do |format|
      if @branch_code_name.update(branch_code_name_params)
        format.html { redirect_to @branch_code_name, notice: 'Branch code name was successfully updated.' }
        format.json { render :show, status: :ok, location: @branch_code_name }
      else
        format.html { render :edit }
        format.json { render json: @branch_code_name.errors, status: :unprocessable_entity }
      end
    end
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_branch_code_name
      @branch_code_name = BranchCodeName.find(params[:id])
    end
end
