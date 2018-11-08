require "faker"

puts 'Creating Categories...'
roupas_femininas = Category.new(name: "Roupas Femininas", image_name: "female_fashion.jpg")
roupas_femininas.save!

roupas_masculinas = Category.new(name: "Roupas Masculinas", image_name: "man_fashion.jpeg")
roupas_masculinas.save!

eletro = Category.new(name: "Eletrodomésticos", image_name: "home.jpeg")
eletro.save!

artigos_esportivos = Category.new(name: "Artigos Esportivos", image_name: "sports2.jpeg")
artigos_esportivos.save!
puts 'Finished!'


puts "Create 50 products..."
50.times do
  product = Product.create
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
