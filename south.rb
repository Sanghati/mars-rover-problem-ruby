require_relative './west'
require_relative './east'

class South
	def left
		return East.new.name
	end
	def right
		return West.new.name
	end
	def move(x,y)
	   x = x 
	   y -= 1
	   return {x: x, y: y}
	end
	def name
	   "S"
	end
end
