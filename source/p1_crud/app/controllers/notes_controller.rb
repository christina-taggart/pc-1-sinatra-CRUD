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
end

put '/notes/:id' do
end

delete '/notes/:id' do
end