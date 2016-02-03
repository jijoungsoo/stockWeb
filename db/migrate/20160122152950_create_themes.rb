class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes, :id=> false  do |t|
      t.string :theme_code
      t.string :theme_name
      t.timestamps null: false
    end
  end
end
