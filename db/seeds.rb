supplier1 = Supplier.create!(name: "Good Stuff", email: "goodstuff@email.com", phone_number: "123-456-7890")
supplier2 = Supplier.create!(name: "Better Stuff", email: "betterstuff@email.com", phone_number: "098-765-4321")

product = Product.create!({ name: "race car", price: "1.0", description: "fast car that goes really fast and has fastness", quantity: 2, supplier_id: supplier2.id })
Image.create!(url: "racecarpicture.com", product_id: product.id)

product = Product.create!({ name: "Dinosaur", price: "3.0", description: "Scare dinosaur toy that does lots of scary things", quantity: 3, supplier_id: supplier1.id })
Image.create!(url: "dinosaurtoy.com", product_id: product.id)

product = Product.create!({ name: "Bouncy Ball", price: "10.0", description: "Ball that has lots of great bounce to it", quantity: 10, supplier_id: supplier1.id })
Image.create!(url: "bouncballpic.com", product_id: product.id)

product = Product.create!({ name: "Book", price: "30.0", description: "Its a book. read it.", quantity: 1, supplier_id: supplier1.id })
Image.create!(url: "books.com", product_id: product.id)

product = Product.create!({ name: "pencil", price: "0.5", description: "a writting utensil that writes things", quantity: 5, supplier_id: supplier1.id })
Image.create!(url: "pencilpics.com", product_id: product.id)

product = Product.create!({ name: "gun", price: "150.0", description: "a gun to keep you safe from the bad guys", quantity: 1, supplier_id: supplier2.id })
Image.create!(url: "guns.com", product_id: product.id)
Image.create(url: "shootemdead.com", product_id: product.id)
