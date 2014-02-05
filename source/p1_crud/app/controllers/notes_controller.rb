get '/notes' do
	@notes = Note.includes.all
	erb :notes
end

get '/notes/new' do
end

post '/notes' do
end

get '/notes/:id' do
end

get '/notes/:id/edit' do
end

put '/notes/:id' do
end

delete '/notes/:id' do
end