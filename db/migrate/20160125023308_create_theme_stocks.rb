class CreateThemeStocks < ActiveRecord::Migration
  def change
    create_table :theme_stocks, id:false do |t|
      t.string :theme_code_id, limit: 3
      t.string :stock_code_id, limit: 9 
      t.string :org_stock_code_id, limit: 9
      t.timestamps null: false
    end
  end
end
