class Stock < ActiveRecord::Base
   self.primary_keys = :stock_code
   has_many:market_stocks 
   has_many:markets,  through: :market_stocks

   has_many:theme_stocks;
   has_many:themes, through: :theme_stocks
end
