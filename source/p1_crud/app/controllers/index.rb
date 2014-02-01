get '/' do
  erb :index
end

get '/note/:note_id' do
  @note = Note.find(params[:note_id])
  erb :note
end
