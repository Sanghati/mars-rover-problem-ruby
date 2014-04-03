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
		  #curpos = y
		   x = x 
		   y +=1
		   # if y > max_y 
		   # 	 y = curpos
		   # end
	    return {x: x, y: y}
	end
	def name
		"N"
	end
end
