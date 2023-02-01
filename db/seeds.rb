require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
#

User.create(username: 'mizzike', email: 'greek@aim.com', password_digest: '123', avatar: '')

10.times do
  Todo.create(title: Faker::Book.title, description: Faker::Quote.famous_last_words,
              deadline: Faker::Date.forward(days: 30), isCompleted: Faker::Boolean.boolean, user_id: 1)
end
