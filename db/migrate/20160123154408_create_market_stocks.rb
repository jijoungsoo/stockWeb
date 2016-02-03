class CreateMarketStocks < ActiveRecord::Migration
  def change
    create_table :market_stocks,id:false do |t|
      t.string :market_code_id  , limit: 2
      t.string :stock_code_id , limit: 9
      t.timestamps null: false
    end
  end
end
