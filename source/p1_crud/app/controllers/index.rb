get '/' do
	@notes = Note.all
  erb :index
end

get '/notes' do
	@notes = Note.all

	erb :index
end

get '/notes/new' do

	erb :new
end

post '/notes' do
	@title = params[:title]
	@content = params[:content]
	@new_note = Note.create(title: @title, content: @content)

	erb :note_created
end

get '/notes/:id' do
	@note = Note.find(params[:id])

	erb :show
end

get '/notes/:id/edit' do
	@note = Note.find(params[:id])

	erb :edit
end

put '/notes/:id' do
   note = Note.find(params[:id])
   note.update_attributes({ title: params[:title], content: params[:content]})

	redirect '/'
end

delete '/notes/:id' do
	Note.find(params[:id]).destroy
	redirect '/'
end