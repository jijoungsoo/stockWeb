module JijsHelper
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
end
