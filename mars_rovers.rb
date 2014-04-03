	require_relative './rover'
	
	puts "Enter the maximum x value: "
	max_x = gets.to_i
	puts "Enter the maximum y value :"
	max_y = gets.to_i
	puts "Enter the rover initial x position :"
	rover_initial_x = gets.to_i
	puts "Enter the rover initial y postion :"
	rover_initial_y = gets.to_i
	puts "Enter the initial facing :"
	facing = gets.to_s
	puts "Enter the rover instruction : "
	rover_instruct = gets.to_s.split("")
	
	plateau = Plateau.new(max_x,max_y)
	rover = Rover.new(rover_initial_x,rover_initial_y,facing,plateau)
	
	for instruct in rover_instruct
		if instruct == "L"
		   rover.turn_left
		elsif instruct == "R"
	       rover.turn_right
		elsif instruct == "M"
		   rover.rover_move
		end
	end

	puts rover
