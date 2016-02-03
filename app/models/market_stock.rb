class MarketStock < ActiveRecord::Base
#       self.primary_keys = :market_code_id
	belongs_to :stock ,  :foreign_key=> "stock_code_id", :primary_key => "stock_code"
        belongs_to :market , :foreign_key=> "market_code_id", :primary_key => "market_code"
end
