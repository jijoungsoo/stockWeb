class Opt10081 < ActiveRecord::Base
    self.primary_key = :stock_date , :stock_code

    validates_uniqueness_of :stock_code , :scope=>"stock_date"

end
