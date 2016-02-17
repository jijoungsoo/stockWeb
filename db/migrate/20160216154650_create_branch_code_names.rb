class CreateBranchCodeNames < ActiveRecord::Migration
  def change
    create_table :branch_code_names,id: false do |t|
      t.string :branch_code, limit: 3
      t.string :branch_name, limit: 30

      t.timestamps null: false
    end
    add_index :branch_code_names,:branch_code,unique:true
  end
end
