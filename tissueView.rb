class TissueView
	def display(character)
		print character
	end

	def newRow
		print "\n"
	end

	def showTissue(tissue)
		@cells.each do |row|
			row.each do |cell|
				cell.display
			end
			@view.newRow
		end
	end
end