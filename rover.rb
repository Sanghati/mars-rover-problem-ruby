require_relative './direction'
require_relative './plateau'

class Rover

	attr_accessor :x, :y, :facing, :direction, :position
	def initialize(x,y,facing,plateau)
		
		@x = x
		@y = y
		@facing = facing.strip
		@direction =  Direction.new
		@plateau = plateau
		@position = {}

	end

	def turn_left
		@facing = @direction.dir(@facing).left
	end

	def turn_right
		@facing = @direction.dir(@facing).right
	end

	def rover_move
		
		@position = @direction.dir(@facing).move(@x,@y)
		@x = position[:x]
		@y = position[:y]
		
		if @plateau.rover_boundary?(@x, @y)
	      position[:x] = @x
	      position[:y] = @y
    	end
		
	end

	def to_s
	puts "Pos: #{position[:x]}#{position[:y]}#{facing}"
	
	end
end
