class SeedNote

  def self.add_new_note
    Note.create(title: "Give Anne and Steven Compliments", content: "Anne and Steven are the best teachers ever.")
  end
end

SeedNote.add_new_note