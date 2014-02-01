get '/' do
  @note = Note.all
  erb :index
end

post '/' do
  @note = Note.create(title: params[:title], content: params[:content])
  erb :index
end

put '/' do

end

delete '/' do

end