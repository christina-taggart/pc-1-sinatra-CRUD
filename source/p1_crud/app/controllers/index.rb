get '/' do
  @notes = Note.all
  erb :index
end

get '/notes' do
  @notes = Note.all
  erb :index
end

get '/notes/create' do
  erb :index
end

post '/notes/create' do
 Note.create(title: params[:title], content: params[:content])
  redirect '/notes'
end

get '/notes/delete' do
  Note.where(title: params[:title]).destroy_all
  redirect '/notes'
end

