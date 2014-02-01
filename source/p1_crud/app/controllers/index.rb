get '/' do
  redirect '/notes'
end

# Show links to all notes
get '/notes' do
  @notes = Note.all
  erb :notes
end

# Show single note
get '/notes/:id' do
  @note = Note.find(params[:id])
  erb :note
end

# Show form for creating new note
get 'notes/new' do
  erb :new
end

# Post request for creating new note
post '/notes' do
  Note.create(params[:note])
end

# Show page for editing a note
get '/notes/:id/edit' do
  @note = Note.find(params[:id])
  erb :edit
end

# Update an existing note
put '/notes/:id' do
  p params[:note]
  Note.update(params[:id], params[:note])
  redirect "/notes/#{params[:id]}"
end

# Delete an existing note
delete '/notes/:id' do
  Note.destroy(params[:id])
  redirect "/notes"
end