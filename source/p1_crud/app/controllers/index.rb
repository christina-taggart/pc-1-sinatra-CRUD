get '/' do
  @notes = Note.all
  erb :index
end

get '/notes/new' do
  erb :note_form
end
