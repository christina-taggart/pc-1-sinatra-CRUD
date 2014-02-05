get '/' do
  @notes = Note.all
  erb :index
end

get '/notes' do
  redirect '/'
end

get '/notes/new' do
  erb :create_note
end

post '/notes' do
  @note = Note.create(title: params[:title], content: params[:content])
  id = @note.id
  redirect "/notes/#{id}"
end

get '/notes/:id' do
  @note = Note.find(params[:id])
  erb :single_note
end

get '/notes/:id/edit' do
  @note = Note.find(params[:id])
  erb :edit_note
end

put '/notes/:id' do
  @note = Note.find(params[:id])
  @note.title = params[:title]
  @note.content = params[:content]
  @note.save
  redirect "/notes/#{params[:id]}"
end

get '/notes/:id/delete-confirmation' do
  @note = Note.find(params[:id])
  erb :delete_note_confirmation
end

delete '/notes/:id' do
  Note.find(params[:id]).destroy
  redirect '/'
end
