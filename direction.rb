require_relative './north'
require_relative './south'
require_relative './west'
require_relative './east'

class Direction
    attr_accessor :north, :south, :east, :west
	def initialize
		@north = North.new
		@south = South.new
		@west = West.new
		@east = East.new
	end

	def dir(facing)
		case
	       when facing == 'N'
	       return @north
	        
	       when facing == 'E'
	       	return @east

	       when facing == 'W'
	       	return @west

	       when facing == 'S'
	       	return @south
	    end
 	end
end
