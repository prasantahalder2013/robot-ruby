class Input
	def initialize(input)
		@input = input.strip.downcase
	end

	def basename
		@basename ||=  @input.split(" ").first
	end

	def parameters
		@parameters ||= @input.split(" ").drop(1)
		@parameters = @parameters.first.split(",") if @parameters.length > 0
	end
end