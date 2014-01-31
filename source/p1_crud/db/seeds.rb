require 'faker'
50.times do
  Note.create(title:Faker::Lorem.words(rand(1..3)).join(" "), content: Faker::Lorem.sentence)
end