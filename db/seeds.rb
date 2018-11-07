require "faker"

puts "Create 10 categories..."
10.times do
  category = Category.create(
    name: Faker::Cannabis.category
  )
end
puts "Done creating categories"


puts "Create 10 products..."
10.times do
  product = Product.create(
    name: Faker::Cannabis.strain,
    description: Faker::Cannabis.medical_use,
    supplier: Faker::Cannabis.type,
    current_price: rand(0..50),
    avg_price: rand(0..50),
    price_goal: rand(0..50),
    sold_count: rand(0..50),
    avaiable_items: rand(0..50),
    category_id: rand(0..10),
    initial_price: rand(0..50)
  )
end

puts "Done creating products"
