class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains ,:comment => "도메인정의서"  do |t|
      t.string :name, limit: 30 ,:comment => "도메인명" 
      t.string :description, limit: 100 ,:comment => "도메인설명" 
      t.string :english_keyword, limit: 50 ,:comment => "영어키워드" 

      t.timestamps null: false
    end
  end
end
