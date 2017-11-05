# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create a seed user so we can actually log in
user = User.find_by(email: "user@example.com")
user.destroy! unless user.nil?

User.create(
  email: "user@example.com",
  name: "Test User",
  password: "password",
  password_confirmation: "password"
)
