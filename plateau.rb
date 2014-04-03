class Plateau

	attr_accessor :max_x, :max_y
	def initialize(max_x,max_y)
		
		@max_x = max_x
		@max_y = max_y
		
	end

	def rover_boundary?(x, y)
    x >= 0 and x <= @max_x and
    y >= 0 and y <= @max_y
  	end

end
