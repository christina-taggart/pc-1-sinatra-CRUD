require 'faker'

10.times do
  Note.create(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph)
end