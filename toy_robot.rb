$LOAD_PATH.push('/home/prasanta/Ruby-app/toy-robot-ruby/lib')
require 'input'
require 'simulator'

@simulator = Simulator.new()

loop do
	printf "Input command:"
	input = gets
	printf "Your input is: #{input}"
	break if input =~ /^\s*exit\s+/
	@input = Input.new(input)
	
	@simulator.execute(@input.basename, @input.parameters)
end