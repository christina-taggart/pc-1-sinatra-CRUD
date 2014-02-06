get '/' do
  @note = Note.all
  erb :index
end

post '/notes' do
  @note = Note.create(title: params[:title], content: params[:content])
  @note.to_json
end

put '/notes/:id' do
  @updated_note = Note.where(id: params[:id])
  @updated_note.update_all(title: params[:title_update], content: params[:content_update])
  @updated_note.to_json
end

delete '/notes/:id' do
  @deleted_note = Note.where(id: params[:id])
  @deleted_note.destroy_all
  @deleted_note.to_json
end