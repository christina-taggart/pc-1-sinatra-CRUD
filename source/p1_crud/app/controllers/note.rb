get '/notes' do
  @notes = Note.all
  erb :view_notes
end

get '/notes/new' do
  erb :create_note
end

post '/notes' do
  Note.create(params)
  erb :index
end

delete '/notes/:id' do
  Note.destroy(params[:id])
  redirect '/notes'
end