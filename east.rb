require_relative './north'
require_relative './south'

class East
	def left
		return North.new.name
	end
	def right
		return South.new.name
	end
	def move(x,y)
		x += 1 
		y = y
		return {x: x, y: y}
	end
    def name
		"E"
	end
end
