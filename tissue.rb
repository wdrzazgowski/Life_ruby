class Tissue
	def initialize(arraySize)
		@arraySize = arraySize
		
		@cells = Array.new(@arraySize) { Array.new(@arraySize) }
		@nextIterationCells = Array.new(@arraySize) { Array.new(@arraySize) }
		initializeCells	
	end

	def cells
		@cells
	end

	def initializeCells
		rndGen = Random.new

		for i in 0...@arraySize do
			for j in 0...@arraySize do 
				@cells[j][i] = Cell.new(rndGen.rand(2).zero?)
				@nextIterationCells[j][i] = Cell.new(@cells[j][i].alive)
			end
		end
	end

	def rewriteCells
		for i in 0...@arraySize do
			for j in 0...@arraySize do 
				@cells[j][i].alive = @nextIterationCells[j][i].alive
			end
		end
	end

	def growOlder
		for i in 0...@arraySize do
			for j in 0...@arraySize do 
				numberOfNeighbours = getNeighboursCount(j,i)
				@nextIterationCells[j][i].growOlder(numberOfNeighbours)
			end
		end
		rewriteCells
	end

	def aliveCell(j,i)
=begin
		print j
		print " "
		print i
		print " "
=end
		if i < 0 or j < 0 or i >= @arraySize or j >= @arraySize
#			puts "false"
			false
		else
#			print "true "
#			puts @cells[j][i].alive
			@cells[j][i].alive
		end
	end

	def getNeighboursCount(j,i)
		neighboursCount = 0
		if aliveCell(j-1,i-1)
			neighboursCount += 1
		end

		if aliveCell(j-1,i)
			neighboursCount += 1
		end

		if aliveCell(j-1,i+1)
			neighboursCount += 1
		end

		if aliveCell(j,i-1)
			neighboursCount += 1
		end

		if aliveCell(j,i+1)
			neighboursCount += 1
		end

		if aliveCell(j+1,i-1)
			neighboursCount += 1
		end

		if aliveCell(j+1,i)
			neighboursCount += 1
		end

		if aliveCell(j+1,i+1)
			neighboursCount += 1
		end

=begin		
		print i
		print " "
		print j 
		print " " 
		print neighboursCount

		puts ""
=end
		return neighboursCount
	end
end
