get '/' do
  # Look in app/views/index.erb
  redirect '/notes'
end

get '/notes' do
	# view all notes (by title)
	@partials = ["partials/create_note", "partials/existing_notes"]
	erb :index
end

post '/notes' do
	# creates a new note
	Note.create(params)
	@partials = ["partials/create_note", "partials/existing_notes"]
	erb :index
end

get '/notes/:id' do
	@partials = ["partials/view_a_note", "partials/update_a_note", "partials/delete_a_note"]
	p @note = Note.find(params[:id])
	erb :index
end

put '/notes/:id' do
	Note.find(params[:id]).update_attributes(id: params[:id], title: params[:title], content: params[:content])
	redirect '/notes'
end

delete '/notes/:id' do
	Note.find(params[:id]).delete
	redirect '/notes'end
