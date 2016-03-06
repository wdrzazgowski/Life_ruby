class Tissue
	def initialize(arraySize, view)
		@arraySize = arraySize
		@view = view
		
		rndGen = Random.new
		@cells = Array.new(@arraySize) { Array.new(@arraySize, Cell.new(rndGen.rand(2).zero?, view)) }

=begin
		for i in 0..@arraySize do
			for j in 0..@arraySize do 
				@cells[j][i] = Cell.new(rndGen.rand(2).zero?, view)
			end
		end		
=end
	end

	def display
=begin
		for i in 0..@arraySize do
			for j in 0..@arraySize do 
				@cells[j][i].display
			end
			@view.newRow
		end
=end
		@cells.each do |row|
			row.each do |cell|
				cell.display
			end
			@view.newRow
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
		print character
	end

	def newRow
		print "\n"
	end
end

tView = TissueView.new()
tissue = Tissue.new(10, tView)
tissue.display

