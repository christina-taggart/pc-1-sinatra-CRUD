get '/' do
  redirect '/notes'
end

# Show links to all notes
get '/notes' do
  @notes = Note.all
  @partial = :notes
  erb :single_page
end

# Show form for creating new note
get '/notes/new' do
  @partial = :new
  erb :single_page
end

# Show single note
get '/notes/:id' do
  @note = Note.find(params[:id])
  @partial = :note
  erb :single_page
end

# Post request for creating new note
post '/notes' do
  Note.create(params[:note])
  redirect '/notes'
end

# Show page for editing a note
get '/notes/:id/edit' do
  @note = Note.find(params[:id])
  @partial = :edit
  erb :single_page
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