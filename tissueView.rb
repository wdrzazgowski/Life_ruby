class TissueView
	def display(character)
		print character
	end

	def newRow
		print "\n"
	end

	def show(tissue)
		tissue.cells.each do |row|
			row.each do |cell|
				if cell.alive
					print "@"
				else
					print '.'
				end
			end
			newRow
		end
		newRow
	end
end