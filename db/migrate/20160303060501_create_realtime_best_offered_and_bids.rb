class CreateRealtimeBestOfferedAndBids < ActiveRecord::Migration
  def change
    create_table :realtime_best_offered_and_bids , options: "ENGINE=MEMORY" ,:comment => "주식우선호가" do |t|
      t.timestamp :stock_date  ,:comment => "주식조회시간"
      t.string :stock_code, limit: 9 ,:comment => "종목코드"
      t.integer :offered_price ,:comment => "매도호가"
      t.integer :bid_price ,:comment => "매수호가"

      t.timestamps null: false
    end
    add_index :realtime_best_offered_and_bids, [:stock_date, :stock_code ] ,name: 'realtime_best_offered_and_bids_on_stock_date'
  end
end
