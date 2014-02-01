get '/' do
  @note = Note.all
  erb :index
end

post '/' do
  @note = Note.create(title: params[:title], content: params[:content])
  redirect "/"
end

put '/' do
  @updated_note = Note.where(id: params[:id])
  @updated_note.update_all(title: params[:title_update], content: params[:content_update])
  redirect "/"
end

delete '/' do
  @deleted_note = Note.where(id: params[:id])
  @deleted_note.destroy_all
  redirect "/"
end

# Things to add as extras:
# Error message if id is invalid
# Ordering post update.
# CSS style