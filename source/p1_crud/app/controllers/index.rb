get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/notes' do
	# view all notes (by title)
	@partials = ["partials/create_note", "partials/existing_notes"]
	erb :note
end

post '/notes' do
	# creates a new note
	Note.create(params)
	erb :note
end

get '/notes/:id' do
	@partials = ["partials/view_a_note"]
	erb :note
end

put '/notes/:id' do
	# update specific note
end

delete '/notes/:id' do
	# delete specific note
end