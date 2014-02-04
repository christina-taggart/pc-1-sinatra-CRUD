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

#actually, what I'd like to do is have a form pop up in page
post '/note/:id/edit' do

  redirect '/note/:id/edit'
end