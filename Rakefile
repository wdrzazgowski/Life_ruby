desc "Interactively delete files in the ./doc folder"
task :clean_doc do
	Dir["./doc/*"].each do |f|
		next unless File.file?(f)
		print "Delete #{f}? "
		answer = $stdin.gets
		case answer
		when /^y/
			File.unlink(f)
		when /q/
			break
		end
	end
end