require "ulid"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all

user_names = [
  "Birgit","Lisa","Lukas","NJ","Nele","Pia","Curtis","Bitty","Roman","Olivia","Felix","Liv","Daniel","Frederik","Line","Alexandre","Rasmus","Hans","Karl","Harald","Malthe","William","Jakob","Jonas","Mads","Emma","Joshua","Søren","Raphael","Neikh Bakht","Karen","Selma","Marie","Tilde","Matt","Anita","Thomas","Nony","Makzym","Sasha","Aaron","Christine","Rebeca","Fernada", "Felo", "Mogi"
]

users = user_names.each { |user|
  User.create({ name: user })
}

p "Created #{users.count} users"

messages = [
  "Hallo people", "It's me", "Here you can spam away", "Lorem ipsum", "Heute ist ein schoener Tag", "Kom nu!"
]

User.first(3).each { |user|
  user.messages.create({ content: messages.sample })
}

# p "Created #{messages.count} messages"
