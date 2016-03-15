require_relative "cell.rb"
require_relative "tissueView.rb"
require_relative "tissue.rb"

tView = TissueView.new
tissue = Tissue.new(5)

(0..20).each do
	tView.show(tissue)	
	tissue.growOlder
end