class ThemeStock < ActiveRecord::Base
     belongs_to :stock, :foreign_key=> "stock_code_id", :primary_key =>"stock_code"
     belongs_to :theme, :foreign_key=> "theme_code_id", :primary_key =>"theme_code"
end
