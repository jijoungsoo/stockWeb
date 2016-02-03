class Market < ActiveRecord::Base
	self.primary_key = 'market_code'
        has_many :market_stocks ,:foreign_key => :market_code_id
        has_many :stocks , through: :market_stocks 
end
