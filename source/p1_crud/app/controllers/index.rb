get '/' do
  @notes = Note.get_all_newest_first
  erb :index
end
