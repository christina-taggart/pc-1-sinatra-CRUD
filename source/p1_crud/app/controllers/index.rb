get '/' do
  @notes = Note.all
  erb :index
end

post '/new_note' do
  Note.create(title: params['note_title'], content: params['note_content'])
  redirect '/'
end

delete '/note/:id' do
  Note.destroy(params[:id])
  redirect '/'
end

get '/note/:id/edit' do
  @note = Note.where(id: params[:id]).first
  erb :edit_note
end

put '/note/:id' do
  note = Note.find(params[:id])
  note.update_attributes(title: params[:title], content: params[:content])
  redirect '/'
end