class TableSurface

	def initialize(whdth = 5, height = 5)
		@columns = 0..whdth
		@rows = 0..height
	end

	def inbounds?(x_code, y_code)
		@columns.cover?(x_code.to_i) && @rows.cover?(y_code.to_i)
	end
end