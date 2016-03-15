class Cell
	attr_accessor :alive

	def initialize(alive)
		@alive=alive
	end
		
	def growOlder(numberOfNeighbours)
		if @alive
			if numberOfNeighbours < 2 or numberOfNeighbours > 3
				@alive = false
			else
				@alive = true
			end
		else
			if numberOfNeighbours == 3
				@alive = true
			else
				@alive = false
			end
		end
	end 
end