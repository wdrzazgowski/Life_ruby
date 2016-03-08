class Tissue
	def initialize(arraySize, view)
		@arraySize = arraySize
		@view = view
		
		@cells = Array.new(@arraySize) { Array.new(@arraySize) }
		@nextIterationCells = Array.new(@arraySize) { Array.new(@arraySize) }
		initializeCells
				
	end

	def initializeCells
		rndGen = Random.new

		for i in 0...@arraySize do
			for j in 0...@arraySize do 
				@cells[j][i] = Cell.new(rndGen.rand(2).zero?)
				@nextIterationCells[j][i] = @cells[j][i]
			end
		end
	end

	def rewriteCells
		for i in 0...@arraySize do
			for j in 0...@arraySize do 
				@cells[j][i] = @nextIterationCells[j][i]
			end
		end
	end

	def growOlder
		for i in 0...@arraySize do
			for j in 0...@arraySize do 
				numberOfNeighbours = getNeighboursCount(i,j)
				@nextIterationCells[j][i].growOlder(numberOfNeighbours)
			end
		end
	end

	def getNeighboursCount(i,j)
		return 3
	end
end
