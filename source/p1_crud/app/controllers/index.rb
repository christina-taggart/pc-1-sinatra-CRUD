
#read
get '/' do
  @notes = Note.all
  @mode = "none"
  erb :index
end

#create
post '/notes' do
  Note.create(params)
  redirect '/'
end

#Edit
get '/notes/:id/edit' do
  @notes = Note.all
  @note = Note.find(params[:id])
  @mode = "edit"
  erb :index
end

#update
put '/notes/:id' do
  note = Note.find(params[:id])
  note.update_attributes(:title => params[:title], :message => params[:message])
  redirect '/'
end


#delete
delete '/notes/:id' do
  Note.destroy(params[:id])
  redirect '/'
end
