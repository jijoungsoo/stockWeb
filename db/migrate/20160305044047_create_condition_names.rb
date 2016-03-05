class CreateConditionNames < ActiveRecord::Migration
  def change
    create_table :condition_names  , id:false ,:comment => "조건검색"  do |t|
      t.string :condition_name, limit: 50 ,:comment => "조건검색명"
      t.integer :nIndex ,:comment => "인덱스번호"

      t.timestamps null: false
    end
  end
end
