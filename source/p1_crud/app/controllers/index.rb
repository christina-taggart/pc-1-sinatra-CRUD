get '/' do
  erb :index
end

#CREATE note
post '/note' do

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

end