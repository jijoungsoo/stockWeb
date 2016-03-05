class CreateScreenInfos < ActiveRecord::Migration
  def change
    create_table :screen_infos do |t|
      t.string :screen_number, limit: 4
      t.string :tr_code, limit: 10
      t.string :rq_name, limit: 30

      t.timestamps null: false
    end
  end
end
