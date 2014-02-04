get '/notes' do
  @notes = Note.all
  erb :view_notes
end

get '/notes/new' do
  erb :create_note
end

post '/notes' do
  Note.create(params)
  erb :index
end