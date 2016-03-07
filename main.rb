require_relative "cell.rb"
require_relative "tissueView.rb"
require_relative "tissue.rb"

tView = TissueView.new()
tissue = Tissue.new(10, tView)
tissue.display

