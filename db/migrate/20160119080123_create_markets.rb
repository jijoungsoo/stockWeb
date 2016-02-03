class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets , id: false  do |t|
      t.string :market_code , limit: 2
      t.string :market_name, limit: 45

      t.timestamps null: false
    end
    add_index :markets, :market_code, unique: true
  end
end
