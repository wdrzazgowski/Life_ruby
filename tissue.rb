class Tissue
	def initialize(arraySize, view)
		@arraySize = arraySize
		@view = view
		
		rndGen = Random.new
		@cells = Array.new(@arraySize) { Array.new(@arraySize, Cell.new(rndGen.rand(2).zero?, view)) }

		for i in 0...@arraySize do
			for j in 0...@arraySize do 
				@cells[j][i] = Cell.new(rndGen.rand(2).zero?, view)
			end
		end		
	end

	def display
		@cells.each do |row|
			row.each do |cell|
				cell.display
			end
			@view.newRow
		end
	end
end
