class Robot
	
	attr_reader :x_code, :y_code, :direction
	
	DIRECTIONS = [:north, :east, :south, :west]
	
	def initialize(x_code, y_code, direction)
		@x_code = x_code.to_i
		@y_code = y_code.to_i
		@direction = direction
	end

	def left
	    fail 'Unknown direction' if @direction.nil?
	    case @direction
		when :north
			@direction = :west
	    when :east
	    	@direction = :north
	    when :south
	    	@direction = :east
	    when :west
	    	@direction = :south
	    end
	end

	def right
	    fail 'Unknown direction' if @direction.nil?
	    case @direction
		when :north
			@direction = :east
	    when :east
	    	@direction = :south
	    when :south
	    	@direction = :west
	    when :west
	    	@direction = :north
	    end
	end

	def update_direction(new_direction)
		if DIRECTIONS.include? (new_direction)
			@direction = new_direction
		else
			puts "Invalid direction"
		end
	end

	def update_position(table, new_x_code, new_y_code)
		if table.inbounds?(new_x_code.to_i, new_y_code.to_i)
			@x_code = new_x_code.to_i
			@y_code = new_y_code.to_i
		else
			puts "Invalid position"
		end
	end
end