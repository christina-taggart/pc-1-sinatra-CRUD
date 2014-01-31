use Rack::MethodOverride

get '/' do
  @deleted = session[:change_msg]
  session[:change_msg] = nil
  @notes = Note.all
  erb :index
end

get '/notes/new' do
  erb :new_form
end

post '/notes' do
  note = Note.create(params)
  redirect '/'
end

get '/notes/:id/edit' do
  @note = Note.find(params[:id])
  erb :edit_form
end

delete '/notes/:id' do
  Note.destroy(params[:id])
  session[:change_msg] = "Note ##{params[:id]} deleted."
  redirect '/'
end

put '/notes/:id' do
  note = Note.find(params[:id])
  note.title = params[:title]
  note.content = params[:content]
  note.save
  session[:change_msg] = "Note ##{params[:id]} updated."
  redirect '/'
end
