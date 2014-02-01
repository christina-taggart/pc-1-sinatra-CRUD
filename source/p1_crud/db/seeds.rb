# Seed db with 20 lorem ipsum notes
20.times do
  title = Faker::Lorem.words.join(' ')
  body = Faker::Lorem.paragraph(10)
  Note.create({title: title, body: body})
end