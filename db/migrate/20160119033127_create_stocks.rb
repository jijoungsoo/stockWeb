class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks, :id=>false do |t|
      t.string :stock_code, limit: 9
      t.string :stock_name, limit: 45
      t.datetime :stock_open_date

      t.timestamps null: false
    end
    add_index :stocks , [:stock_code] , unique: true
  end
end
