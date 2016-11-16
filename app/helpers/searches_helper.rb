module SearchesHelper

	def poverty_level( size)
		# @one = 11880
		# @two = 16020
		# @three = 20160
		# @four = 24300
		# @five = 28440
		# @six = 32580
		# @seven = 36730
		# @eight = 40890
		case size
		when 1
			return 11880
		when 2
			return 16020
		when 3
			return 20160
		when 4
			return 24300
		when 5
			return 28440
		when 6
			return 32580
		when 7
			return 36730
		else return 40890
		end
	end
end
