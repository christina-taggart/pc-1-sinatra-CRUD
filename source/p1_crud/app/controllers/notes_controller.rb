get '/notes' do
	@notes = Note.get_all_newest_first
	erb :notes
end

get '/notes/new' do
	erb :new_note
end

post '/notes' do
	Note.create(params)
	redirect '/notes'
end

get '/notes/:id' do
end

get '/notes/:id/edit' do
	@note = Note.find(params[:id])
	erb :edit_note
end

put '/notes/:id' do
	@note = Note.find(params[:id])
	@note.update_attributes(params[:note])
	redirect '/notes'
end

delete '/notes/:id' do
end