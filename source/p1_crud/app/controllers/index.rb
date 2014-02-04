get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/notes' do
  @all_notes = Note.all
  erb :notes
end

get '/notes/new' do
	erb :new_note
end

post '/notes' do
	Note.create(params)
	redirect '/notes'
end

get '/notes/:id' do
	@note = Note.find(params[:id])
	erb :view_note
end

get '/delete/:id' do
	@note = Note.find(params[:id])
	erb :delete_note
end

delete '/notes/:id' do
	Note.destroy(params[:id])
	redirect '/notes'
end

get '/notes/:id/edit' do
	erb :edit_note
end

put '/notes/:id' do
end