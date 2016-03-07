class Cell
	def initialize(alive, view)
		@alive = alive
		@view = view
	end

	def display()
		if @alive
			@view.display("*")
		else
			@view.display(".")
		end

	end
end