Supplier.destroy_all
supplier1 = Supplier.create!(
  { name: "test", email: "test@gmail.com", phone_number: "111-222-3333" }
)
supplier2 = Supplier.create!(
  { name: "test2", email: "test2@gmail.com", phone_number: "999-555-7777" }
)
suppplier3 = Supplier.create!(
  { name: "httpie", email: "httpie@server.com", phone_number: "333-444-5555" }
)

Product.destroy_all
product1 = Product.create!(
  { name: "race car", price: "1.5", description: "a car that goes really fast", top_seller: true, inventory_count: 100, supplier_id: supplier1.id }
)
product2 = Product.create!(
  { name: "dinosaur", price: "2.0", description: "a small plastic dinosaur figure.", top_seller: true, inventory_count: 50, supplier_id: supplier1.id }
)
product3 = Product.create!(
  { name: "bouncy ball", price: "0.5", description: "a ball that bounces", top_seller: true, inventory_count: 300, supplier_id: supplier2.id }
)
product4 = Product.create!(
  { name: "test", price: "20.0", description: "happy birthday to me", top_seller: true, inventory_count: 2000, supplier_id: supplier2.id },
)

Image.destroy_all
Image.create!(
  url: "image_number_1.com", product_id: product1.id,
)
Image.create!(
  url: "image_number_2.com", product_id: product1.id,
)
Image.create!(
  url: "image_number_3.com", product_id: product1.id,
)

User.destroy_all
User.create!(
  name: "test", email: "test@test.com", password: "password", password_confirmation: "password",
)

Order.destroy_all
Order.create!(
  user_id: 1, product_id: 1, quantity: 10, subtotal: .1, tax: 0.1, total: 1.2,
)
