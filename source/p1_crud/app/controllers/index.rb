get '/' do
  # Look in app/views/index.erb
  erb :index
end

#form to create note

get '/notes/new' do
	erb :new
end

#create new note
post '/notes' do
	@note = Note.create(params)
	redirect "/notes"
end


# #view  allnotes
get '/notes' do
	@notes = Note.all
	erb :notes
end

#view specific note
get '/notes/:id' do
	@note = Note.find(params[:id])
	erb :note
end

#form to update note
get '/notes/:id/edit' do
	@note = Note.find(params[:id])
	erb :edit
end

#edit note
put '/notes/:id' do 
	updated_note = Note.where(id: params[:id])
	updated_note.update_all(title: params[:title], content: params[:content])
	redirect "/notes/#{params[:id]}"
end

# put '/card/:card_id' do
#     updated_card = Card.where(id: params[:card_id])
#     updated_card.update_all(question: params[:question], answer: params[:answer])
#     redirect "/deck/#{session[:deck_id]}"
# end

#delete note
delete '/notes/:id' do
	deleted_note = Note.where(params[:id])
	deleted_note.destroy_all
	redirect "/notes"
end

