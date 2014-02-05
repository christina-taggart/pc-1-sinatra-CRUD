get '/' do
  # Look in app/views/index.erb
  redirect '/notes'
end

get '/info' do
  Demo.new(self).info
end
