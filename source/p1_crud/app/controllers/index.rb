get '/' do
  redirect '/notes'
end

get '/notes/new' do
  erb :new_note
end

get '/notes/:id/edit' do
  @note = Note.find(params[:id])
  erb :edit_note
end

get '/notes' do
  @notes = Note.order("created_at desc")
  erb :index
end

post '/notes' do
  new_note = Note.new(params)
  new_note.save if new_note.valid?
  redirect '/'
end

put '/notes/:id' do
  @note = Note.find(params[:id])
  @note.update_attributes(title: params[:title], content: params[:content])
  redirect '/'
end

delete '/notes/:id' do
  Note.find(params[:id]).destroy
  redirect '/notes'
end