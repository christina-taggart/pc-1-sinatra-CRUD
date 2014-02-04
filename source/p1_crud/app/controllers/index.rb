require_relative '../../config/environment'

before do 
	@notes = Note.all
end

get '/' do
  erb :index
end

post '/created' do
	Note.create(params)
	@notes = Note.all
	redirect '/'
end

get '/:note_id/deleted' do
	Note.find(params[:note_id]).destroy
	@notes = Note.all
	redirect '/'
end

post '/:note_id/edited' do
	note = Note.find(params[:note_id])
	note.update_attributes(title: params[:title], content: params[:content])
	redirect '/'
end

get '/:note_id/edit' do
	@note_to_edit = Note.find(params[:note_id])
	erb :index
end