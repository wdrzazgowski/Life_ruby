class Cell
	def initialize(alive)
		@alive = alive
	end

	def growOlder(numberOfNeighbours)
		if @alive
			if numberOfNeighbours < 2 or numberOfNeighbours > 3
				return @alive = false
			else
				return alive = true
			end
		else
			if numberOfNeighbours == 3
				return @alive = true
			else
				return @alive = false
			end
		end
	end 
end