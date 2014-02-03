get '/' do
  # Look in app/views/index.erb
  @note = Note.all
  erb :index
end

#create new note
post '/note' do
	Note.create(content: params[:note], title: params[:title])
	redirect "/"
end	

#update note
put '/note/:id' do
	edit = Note.find(params[:id])
	edit.content = params[:content]
	edit.save 
	redirect '/'
end

#delete note
delete '/note/:id/delete' do
	delete = Note.find(params[:id])
	delete.destroy
	redirect '/'
end