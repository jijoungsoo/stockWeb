module JijsHelper

  	$stocks=Stock.all
		$h = {}
	  $stocks.each do |stock|
		    $h[stock.stock_code] ||= []
		    $h[stock.stock_code].push(stock.stock_name)
		end

	def dateBeautifyBySecond(t)
		cute_date=Array.new
		tables=[ ["day", 24*60*60], ["hour", 60*60], ["minute", 60], ["sec", 1], ["mis", 0.001] ]
		tables.each do |unit, value|
		    o = t.divmod(value)
		    p_unit = o[0] > 1 ? unit.pluralize : unit
		    cute_date.push("#{o[0]} #{unit}") unless o[0] == 0
		    t = o[1]
		end
		return cute_date.join(', ')
	end

  def nwd(value)
		ret=number_with_delimiter(value)
    return ret
  end


  def get_stock_name(stock_code)
   #puts stock_code
	 ret = $h[stock_code.to_s]
   if(ret==nil)
     ret='못찾겠음'
   else
     ret = ret[0]
   end
    return ret
  end

end
