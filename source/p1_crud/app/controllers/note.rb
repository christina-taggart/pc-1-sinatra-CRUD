get '/notes' do
  @notes = Note.all
  erb :index
end

get '/notes/new' do
  erb :create_note
end

post '/notes' do
  Note.create(params)
  redirect '/notes'
end

delete '/notes/:id' do
  Note.destroy(params[:id])
  redirect '/notes'
end

get '/notes/:id/edit' do
  @note = Note.find(params[:id])
  erb :edit_note
end

put '/notes/:id' do
  note = Note.find(params[:id])
  note.update_attributes(params)
  redirect '/notes'
end