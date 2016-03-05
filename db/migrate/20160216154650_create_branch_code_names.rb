class CreateBranchCodeNames < ActiveRecord::Migration
  def change
    create_table :branch_code_names,id: false ,:comment => "회원사코드표"  do |t|
      t.string :branch_code, limit: 3 ,:comment => "회원사코드"
      t.string :branch_name, limit: 30 ,:comment => "회원사명"

      t.timestamps null: false
    end
    add_index :branch_code_names,:branch_code,unique:true
  end
end
