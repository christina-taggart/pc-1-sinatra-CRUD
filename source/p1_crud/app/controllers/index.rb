get '/' do
	session[:url] = request.path_info
  @notes = Note.get_all_newest_first
  erb :index
end
