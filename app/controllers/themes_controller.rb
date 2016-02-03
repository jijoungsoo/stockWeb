class ThemesController < ApplicationController
  before_action :set_theme, only: [:show, :edit, :update, :destroy]

  # GET /themes
  # GET /themes.json
  def index
    @themes = Theme.all
  end

  # GET /themes/1
  # GET /themes/1.json
  def show
  end

  # GET /themes/new
  def new
  end

  # POST /themes
  # POST /themes.json
  def create
    themes = Theme.all
    themes.delete_all
    kiwoomApi = KiwoomApi.new();
    tmp=kiwoomApi.get_theme_group_list();
    tmp.each do |key,value|
	tmp1=Theme.create(
               :theme_code =>key,
               :theme_name =>value[0] )
    end

    themes = Theme.all
    theme_stock=ThemeStock.all
    theme_stock.delete_all
    themes.each do |theme|
        stock_codes=kiwoomApi.get_theme_group_code(theme.theme_code)
        stock_codes.each do |stock_code|
		ThemeStock.create(
			:theme_code_id =>theme.theme_code,
                        :stock_code_id =>stock_code[1,stock_code.length],
                        :org_stock_code_id =>stock_code
		)
	end
    end
    
    respond_to do |format|
        format.html { redirect_to themes_path, notice: 'Theme group was successfully created.' }
        format.json { render :show, status: :created, location: themes_path }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_theme
      @theme = Theme.find(params[:id])
    end
end
