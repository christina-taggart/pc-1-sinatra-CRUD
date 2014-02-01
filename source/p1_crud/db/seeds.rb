notes = [["Title", "this is content"], ["Title 2", "this is more content"]]

notes.each do |note|
	Note.create(title: note[0], content: note[1])
end