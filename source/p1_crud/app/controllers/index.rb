get '/' do
  session[:delete_mode] = nil
  erb :index
end

#CREATE note
get '/new_note' do
  erb :new_note
end

post '/notes' do
  new_note = Note.create(title: params[:title], content: params[:content])
  redirect "/notes/#{new_note.id}"
end

# READ note
get '/notes/:note_id' do
  @note = Note.find(params[:note_id])
  erb :note
end

# UPDATE note
patch '/notes/:note_id' do
  updated_note = Note.where(id: params[:note_id]).first
  updated_note.title = params[:title]
  updated_note.content = params[:content]
  updated_note.save
  redirect "/notes/#{params[:note_id]}"
end

# DELETE note
delete '/notes/:note_id' do
  if session[:delete_mode]
    Note.find(params[:note_id]).destroy
    session[:delete_mode] = nil
    redirect '/'
  else
    session[:delete_mode] = true
    redirect "/notes/#{params[:note_id]}"
  end
end