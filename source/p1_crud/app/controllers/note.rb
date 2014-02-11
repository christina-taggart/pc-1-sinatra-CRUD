get '/notes' do
  @notes = Note.all.sort_by! { |note| note.id }
  erb :index
end

get '/notes/new' do
  session[:create_note] = true
  redirect '/notes'
end

post '/notes' do
  Note.create(params)
  session[:create_note] = false
  redirect '/notes'
end

delete '/notes/:id' do
  Note.destroy(params[:id])
  redirect '/notes'
end

get '/notes/:id/edit' do
  session[:note_to_edit_id] = Note.find(params[:id]).id
  redirect '/notes'
end

put '/notes/:id' do
  note = Note.find(params[:id])
  note.update_attributes(params)
  session[:note_to_edit_id] = nil
  redirect '/notes'
end