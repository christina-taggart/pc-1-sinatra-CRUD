get '/' do
  @notes = Note.all
  erb :index
end

get '/notes/new' do
  @notes = Note.all
  erb :index
end

post '/notes' do
 Note.create(title: params[:title], content: params[:content])
 redirect '/'
end

delete '/notes/:id' do
  @note = Note.find(params[:id])
  @note.destroy
  redirect '/'
end

get 'notes/:id/edit' do 
  @note = Note.find(params[:id])
end

put '/notes/:id' do
  @note = Note.find(params[:id])
  @note.title = params[:title]
  @note.content = params[:content]
  @note.save
  redirect '/'
end

