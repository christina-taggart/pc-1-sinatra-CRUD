get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/notes' do
	# view all notes (by title)
	erb :note
end

post '/notes' do
	# creates a new note
	Note.create(params)
	erb :note
end

get '/notes/:id' do
	# view specific note
end

put '/notes/:id' do
	# update specific note
end

delete '/notes/:id' do
	# delete specific note
end