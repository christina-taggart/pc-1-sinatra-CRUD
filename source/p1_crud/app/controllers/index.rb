get '/' do
  erb :index
end

#CREATE note
get '/new_note' do
  erb :new_note
end

post '/new_note' do
  new_note = Note.create(title: params[:title], content: params[:content])
  redirect "/note/#{new_note.id}"
end

# READ note
get '/note/:note_id' do
  @note = Note.find(params[:note_id])
  erb :note
end

# UPDATE note
patch '/note/:note_id' do

end

# DELETE note
delete '/note/:note_id' do
  if @delete_mode
    Note.find(params[:note_id]).destroy
    redirect '/'
  else
    @delete_mode = true
    erb :delete_prompt
  end
end