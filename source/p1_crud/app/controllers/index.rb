get '/' do
  erb :index
end

# Show links to all notes
get '/notes' do
  @notes = Note.all
end

# Show single note
get '/notes/:id' do
  @note = Note.find(params[:id])
  erb :note
end

# Show page for editing a note
get '/notes/:id/edit' do
  @note = Note.find(params[:id])
  erb :edit
end

# Update an existing note
put '/notes/:id' do

end

# Delete an existing note
delete '/notes/:id' do

end