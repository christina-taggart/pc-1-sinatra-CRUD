class SeedNotes
  def self.seed
    10.times { Note.create(title: Faker::Lorem.word, content: Faker::Lorem.sentence) }
  end
end

SeedNotes.seed