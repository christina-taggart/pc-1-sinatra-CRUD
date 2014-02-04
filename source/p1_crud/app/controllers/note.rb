get '/notes' do
  @notes = Note.all
  erb :index
end

get '/notes/new' do
  @create_note = true
  erb :index
end

post '/notes' do
  Note.create(params)
  erb :index
end

delete '/notes/:id' do
  Note.destroy(params[:id])
  erb :index
end

get '/notes/:id/edit' do
  @note = Note.find(params[:id])
  erb :index
end

put '/notes/:id' do
  note = Note.find(params[:id])
  note.update_attributes(params)
  redirect '/notes'
end