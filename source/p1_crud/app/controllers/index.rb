get '/' do
  # Look in app/views/index.erb
  redirect '/photos'
end

get '/info' do
  Demo.new(self).info
end
