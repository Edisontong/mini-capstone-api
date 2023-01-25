Supplier.create!([
  {name: "test", email: "test@gmail.com", phone_number: "111-222-3333"},
  {name: "test2", email: "test2@gmail.com", phone_number: "999-555-7777"},
  {name: "httpie", email: "httpie@server.com", phone_number: "333-444-5555"}
])
Product.create!([
  {name: "race car", price: "1.5", image_url: "image.com", description: "a car that goes really fast", top_seller: true, inventory_count: 100, supplier_id: "1"},
  {name: "dinosaur", price: "2.0", image_url: "dinopics.com", description: "a small plastic dinosaur figure.", top_seller: true, inventory_count: 50, supplier_id: "1"},
  {name: "bouncy ball", price: "0.5", image_url: "pictureofaball.com", description: "a ball that bounces", top_seller: true, inventory_count: 300, supplier_id: "1"},
  {name: "test", price: "20.0", image_url: "test.\ncom", description: "happy birthday to me", top_seller: true, inventory_count: 2000, supplier_id: "2"}
])
