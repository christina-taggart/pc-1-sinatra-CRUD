require 'faker'

20.times do
  Note.create(title: Faker::Lorem.word, content: Faker::Lorem.sentence)
end