use Rack::MethodOverride

get '/' do
  @deleted = session[:deleted]
  session[:deleted] = nil
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
  Note.destroy(params[:id])
  session[:deleted] = "Note ##{params[:id]} deleted."
  redirect '/'
end
