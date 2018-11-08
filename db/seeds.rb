require "faker"

puts 'Creating Categories...'
roupas_femininas = Category.new(name: "Roupas Femininas", image_name: "female_fashion.jpg")
roupas_femininas.save!

roupas_masculinas = Category.new(name: "Roupas Masculinas", image_name: "man_fashion.jpg")
roupas_masculinas.save!

eletro = Category.new(name: "Eletrodomésticos", image_name: "home.jpg")
eletro.save!

artigos_esportivos = Category.new(name: "Artigos Esportivos", image_name: "sports2.jpg")
artigos_esportivos.save!
puts 'Finished!'


puts "Create 10 products..."
10.times do
  product = Product.create(
    name: Faker::Cannabis.strain,
    description: Faker::Cannabis.medical_use,
    supplier: Faker::Cannabis.type,
    current_price: rand(1..500),
    avg_price: rand(1..500),
    price_goal: rand(1..500),
    sold_count: rand((1..500),
    avaiable_items: rand(1..500),
    category_id: rand(1..500),
    initial_price: rand(1..500),
    image1: "https://picsum.photos/200/300/?random",
    image2: "https://picsum.photos/200/300/?random")
end

puts "Done creating products"
