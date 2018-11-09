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


puts "Creating products..."

    quarta_roupa = Product.create(
    name: "Saia Plissada Assimétrica",
    description: "Saia plissada estampada de cintura elástica. Bainha assimétrica.",
    supplier: "Skirts Girl",
    current_price: 290.00,
    avg_price: 399.00,
    price_goal: 240.00,
    sold_count: 0,
    avaiable_items: 50,
    category_id: 1,
    initial_price: 290.00,
    main_image: "girls5.jpg",
    image1: "https://picsum.photos/200/300/?image=#{rand(1..1000)}",
    image2: "girls4.1.jpg",
    image3: "girls4.2.jpg",
    )

    terceira_roupa = Product.create(
    name: "Body Cruzado com Botão",
    description: "Body fluido com decote em V cruzado e manga comprida. Fecho de botão de pressão na parte inferior.",
    supplier: "Fashion",
    current_price: 250.00,
    avg_price: 279.00,
    price_goal: 200.00,
    sold_count: 0,
    avaiable_items: 50,
    category_id: 1,
    initial_price: 200.00,
    main_image: "girls2.jpg",
    image1: "girls4.jpg",
    image2: "girls4.1.jpg",
    image3: "girls4.2.jpg"
    )

    segunda_roupa = Product.create(
    name: "Camisa com Estampa",
    description: "Camisa fluida de gola alta com laço e manga comprida com punho e botão. Parte da frente com botões ocultos por aba.",
    supplier: "Camisaries",
    current_price: 250.00,
    avg_price: 250.00,
    price_goal: 100.00,
    sold_count: 0,
    avaiable_items: 50,
    category_id: 1,
    initial_price: 150.00,
    main_image: "girls3.jpg",
    image1: "girls4.jpg",
    image2: "girls4.1.jpg",
    image3: "girls4.2.jpg"
    )

primeira_roupa = Product.create(
    name: "Pantalona Curta Preta",
    description: "Pantalona de cintura alta. Bolsos frontais com pesponto em tom combinando. Zíper frontal e gancho metálico.",
    supplier: "Fancy",
    current_price: 250.00,
    avg_price: 379.00,
    price_goal: 200.00,
    sold_count: 0,
    avaiable_items: 50,
    category_id: 1,
    initial_price: 250.00,
    main_image: "girls4.jpg",
    image1: "girls4.jpg",
    image2: "girls4.1.jpg",
    image3: "girls4.2.jpg"
    )


20.times do
  product = Product.create(
    name: Faker::Cannabis.strain,
    description: Faker::Cannabis.medical_use,
    supplier: Faker::Cannabis.type,
    current_price: rand(20..50),
    avg_price: rand(20..50),
    price_goal: rand(20..50),
    sold_count: rand(0..50),
    avaiable_items: rand(0..50),
    category_id: rand(2..4),
    initial_price: rand(20..50),
    main_image: "http://t00img.yangkeduo.com/goods/images/2018-10-27/ff91fb5507cd257b14054ab5326247e0.jpeg@750w_1l_50Q.src",
    image1: "https://picsum.photos/200/300/?image=#{rand(1..1000)}",
    image2: "https://picsum.photos/200/300/?image=#{rand(1..1000)}",
    image3: "https://picsum.photos/200/300/?image=#{rand(1..1000)}"
  )
end

puts "Done creating products"
