class Tissue
	def initialize(arraySize, view)
		@arraySize = arraySize

		@cells = Array.new(@arraySize)

		rndGen = Random.new
		for i in 0..@arraySize
			@cells[i] = Cell.new(rndGen.rand(2).zero?, view)
		end
	end

	def display
		for i in 0..@arraySize
			@cells[i].display
		end
	end

end

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

class TissueView
	def display(character)
		puts character
	end
end

tView = TissueView.new()
tissue = Tissue.new(10, tView)
tissue.display

