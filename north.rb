require_relative './west'
require_relative './east'

class North
	def left
		return West.new.name
	end
	def right
		return East.new.name
		
	end
	def move(x,y)
	    x = x 
	    y +=1
	    return {x: x, y: y}
	end
	def name
		"N"
	end
end
