require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
5.times do
  categories = ["chinese", "italian", "japanese", "french", "belgian"]
  restaurant = Restaurant.new({
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: categories.sample,
  })
  restaurant.save
end
