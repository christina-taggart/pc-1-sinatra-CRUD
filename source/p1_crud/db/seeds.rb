require 'faker'

user1 = User.create(name: "aditya")

10.times do
  Note.allNote.create(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph)
end