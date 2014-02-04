get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/notes' do
  @all_notes = Note.all
  erb :notes
end

get '/notes/new' do
	erb :new_note
end

post '/notes' do
	Note.create(params)
	redirect '/notes'
end