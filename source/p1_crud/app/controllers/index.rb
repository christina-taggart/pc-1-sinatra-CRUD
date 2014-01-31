get '/' do
  @notes = Note.all
  erb :index
end
