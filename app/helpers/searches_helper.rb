module SearchesHelper

	def poverty_level(income, size)
		@one = 11880
		@two = 16020
		@three = 20160
		@four = 24300
		@five = 28440
		@six = 32580
		@seven = 36730
		@eight = 40890
		case size
		when 1
			return income <= @one
		when 2
			return income <= @two
		when 3
			return income <= @three
		when 4
			return income <= @four
		when 5
			return income <= @five
		when 6
			return income <= @six
		when 7
			return income <= @seven
		else return income <= @eight
		end
	end
end
