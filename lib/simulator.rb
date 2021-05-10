	require 'table_surface'
	require 'robot'

	class Simulator

		def initialize
			@table = TableSurface.new()
			@robot = Robot.new(0,0,:east)
		end

		def execute(command, params)
			execute_command(command, params)
		end

		def execute_command(command, params)
			case command
		    when 'place'
		      place(params)
		    when 'report'
		      report
		    when 'move'
		      move
		    when 'left'
		      left
		    when 'right'
		      right
		    else
		      puts "Invalid command #{command}"
		    end
		end

		def place(params)
			place_robot(params[0], params[1], params[2].to_sym)
			nil
		end

		def report
			puts "X::#{@robot.x_code}  Y::#{@robot.y_code}  F::#{@robot.direction}"
		end

		def move
		    fail 'Robot not found' if @robot.nil?

		    case @robot.direction
		    when :north
		      move_position(1, 0)
		    when :south
		      move_position(-1, 0)
		    when :east
		      move_position(0, 1)
		    when :west
		      move_position(0, -1)
		    else
		      puts 'No such move. Invalid orientation'
		    end
		    nil
	  	end

		def left
			@robot.left
		end

		def right
			@robot.right
		end

		private

		def move_position(x_value, y_value)
		    new_x_value = @robot.x_code + x_value
		    new_y_value = @robot.y_code + y_value
		    @robot.update_position(@table, new_x_value, new_y_value)
		end

		def place_robot(x_value, y_value, direction)
			@robot.update_direction(direction)
		    @robot.update_position(@table, x_value, y_value)
		end
	end