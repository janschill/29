# require "ulid"
# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)

# User.destroy_all
# Message.destroy_all

# user_names = [
#   "Jan", "Birgit","Lisa","Lukas","NJ","Nele","Pia","Curtis","Bitty","Roman","Olivia","Felix","Liv","Daniel","Frederik","Line","Alexandre","Rasmus","Hans","Karl","Harald","Malthe","William","Jakob","Jonas","Mads","Emma","Joshua","Søren","Raphael","Neikh Bakht","Karen","Selma","Marie","Tilde","Matt","Anita","Thomas","Nony","Makzym","Sasha","Aaron","Christine","Rebeca","Fernada", "Felo", "Mogi"
# ]

# redact_emojis = ["🐶","🐱","🐭","🐰","🦊","🐻","🐼","🐻‍❄️","🐨","🐯","🦁","🐮","🐷","🐸","🐵","🐥","🦉","🐙", "🕷️", "🐒", "🪿", "🦆", "🐺", "🐗", "🐴", "🐝", "🐛", "🦋", "🐌", "🐞", "🐜", "🦂", "🐟", "🦭", "🦧", "🦤", "🦦", "🦔", "🐓", "🦜", "🦫", "🍆", "🌽", "🍌", "🥕", "🌶️", "🥖"].shuffle

# users = user_names.each_with_index { |user, index|
#   User.create({ name: user, emoji: redact_emojis[index] })
# }

# p "Created #{users.count} users"

# messages = [
#   "Hello, here you can leave a message for everyone to see"
# ]

# User.first.messages.create({ content: messages.first })

# p "Created #{messages.count} messages"
