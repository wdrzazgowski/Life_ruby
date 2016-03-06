class Tissue
	def initialize(size)
		@size = size
		cells = Array.new(size, size)
	end
end

class Cell

end

class TissueView
	def displayTissue(tissue)
		puts tissue
	end
end

tissue = Tissue.new(10)
tView = TissueView.new()
tView.displayTissue(tissue)