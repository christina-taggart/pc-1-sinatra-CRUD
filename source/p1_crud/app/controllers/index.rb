#Home
get '/' do
  # Look in app/views/index.erb
  erb :index
end

#View All Notes
get '/notes' do
  @notes = Note.all
  erb :notes
end

#View Specific Note
get '/notes/:id' do
	p "#{:id}"
	@note = Note.find(params[:id])
	erb :note
end

#Create a new note
 get '/note/new' do
 	erb :notes_new
 end

 post '/' do
 	@note = Note.create(params)
 	redirect '/'
 end

#Edit a note
patch '/edit/:id' do
	p params
	@note = Note.find(params[:id])
	@note[:title] = params[:title]
	@note[:content] = params[:content]
	@note.save
	redirect '/notes'
end

get '/edit/:id' do
	@note = Note.find(params[:id])
	erb :edit
end

#Delete note
delete '/delete/:id' do
	@note = Note.find(params[:id])
	redirect "/delete/#{:id}"
end

get '/delete/:id' do
	@note = Note.find(params[:id])
	@note.destroy
	erb :delete
end

