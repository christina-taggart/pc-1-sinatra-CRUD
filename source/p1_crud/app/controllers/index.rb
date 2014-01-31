get '/' do
  @notes = Note.all
  erb :index
end

get '/notes/new' do
  erb :note_form
end

post '/notes' do
  note = Note.create(params)
  redirect '/'
end

delete '/notes/:id' do

end
