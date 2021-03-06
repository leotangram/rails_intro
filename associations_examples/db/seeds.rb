# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.destroy_all
Chapter.destroy_all
Sentence.destroy_all


10.times do |i|
  book = Book.create(name: Faker::Book.title)
  chapter = book.chapters.create(name: Faker::Ancient.god)
  chapter.sentences.create(word_count: rand(100))
end


