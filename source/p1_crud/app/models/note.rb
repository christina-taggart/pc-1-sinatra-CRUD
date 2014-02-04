class Note < ActiveRecord::Base
  def delete(title)
    @note = Note.find_by(title: params[:title])
    @note.destroy
  end
end
