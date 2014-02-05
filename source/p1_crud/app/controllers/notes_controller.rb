get '/notes' do
	session[:url] = request.path_info
	@notes = Note.get_all_newest_first
	erb :notes
end

get '/notes/new' do
	erb :new_note
end

post '/notes' do
	Note.create(params)
	redirect session[:url]
end

get '/notes/:id/edit' do
	@note = Note.find(params[:id])
	erb :edit_note
end

put '/notes/:id' do
	@note = Note.find(params[:id])
	@note.update_attributes(params[:note])
	redirect session[:url]
end

delete '/notes/:id' do
	Note.delete(params[:id])
end