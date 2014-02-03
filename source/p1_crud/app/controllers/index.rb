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

get '/note/:id' do
	@note = Note.find(params[:id])	
	erb :edit
end
#update note
put '/:note_id' do
 
redirect "/"
end

#delete note
delete '/:note_id' do

redirect '/'
end