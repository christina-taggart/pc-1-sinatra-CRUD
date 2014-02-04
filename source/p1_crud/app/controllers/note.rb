get '/notes' do
  @notes = Note.all
  erb :view_notes
end