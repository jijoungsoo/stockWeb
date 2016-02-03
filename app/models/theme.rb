class Theme < ActiveRecord::Base
     self.primary_keys =:theme_code
     has_many :theme_stocks, :foreign_key => :theme_code_id
     has_many :stocks, through: :theme_stocks
end
