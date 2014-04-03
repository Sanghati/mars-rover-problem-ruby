require_relative './north'
require_relative './south'

class West
	def left
		return South.new.name
	end
	def right
		return North.new.name
	end
	def move(x,y)
		  x -=1
	    y = y
	    return {x: x, y: y}
	end
	def name
		"W"
	end
end
