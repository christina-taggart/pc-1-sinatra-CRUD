get '/' do
  # Look in app/views/index.erb
  @partial = :index
  erb :single_page
end

#form to create note

get '/notes/new' do
	@partial = :new
	erb :single_page
end

#create new note
post '/notes' do
	@note = Note.create(params)
	redirect '/notes'
end


# #view  allnotes
get '/notes' do
	@notes = Note.all
	@partial = :notes
	erb :single_page
end

#view specific note
get '/notes/:id' do
	@note = Note.find(params[:id])
	@partial = :note
	erb :single_page
end

#form to update note
get '/notes/:id/edit' do
	@note = Note.find(params[:id])
	@partial = :edit
	erb :single_page
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
	Note.destroy(params[:id])
	redirect "/notes"
end

