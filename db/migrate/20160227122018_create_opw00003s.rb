class CreateOpw00003s < ActiveRecord::Migration
  def change
    create_table :opw00003s, id:false ,:comment => "추정자산조회요청"  do |t|
      t.timestamp :search_date ,:comment => "조회날짜"
      t.string :account_number, limit: 10 ,:comment => "계좌번호"
      t.integer :estimation_deposition_property,:comment => "추정예탁자산"

      t.timestamps null: false
    end
    add_index :opw00003s, [:search_date, :account_number] , unique: true
  end
end
