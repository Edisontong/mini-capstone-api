supplier1 = Supplier.create!(name: "Amazon", email: "amazon@email.com", phone_number: "123-123-1234")
supplier2 = Supplier.create!(name: "ThinkGeek", email: "thinkgeek@email.com", phone_number: "123-123-1235")

product = Product.create!({ name: "Sonic Screwdriver", price: "9.0", description: "The Doctor's sciencey magic wand to get out of tight spots. Note: does not work on wood", quantity: 2, supplier_id: supplier2.id })
Image.create!(url: "https://sketchfab.com/blogs/community/wp-content/uploads/2020/04/image2-2.jpg", product_id: product.id)

product = Product.create!({ name: "DnD Dice set", price: "57.0", description: "Take down mighty dragons with this timeless set of 20 sided wonders", quantity: 6, supplier_id: supplier1.id })
Image.create!(url: "https://s-media-cache-ak0.pinimg.com/736x/9c/15/7b/9c157bea5331463f9c539cbce739a4b8.jpg", product_id: product.id)

product = Product.create!({ name: "Space Cowboy Laser Gun", price: "170.0", description: "This weapon has no other description than, Shiney!", quantity: 3, supplier_id: supplier1.id })
Image.create!(url: "http://cdn.shopify.com/s/files/1/0289/1534/products/MalPistol_MP-1_1756x988_e53f9448-81ec-41de-9369-4cbad64f18f5_1024x1024.jpg?v=1401915776", product_id: product.id)

product = Product.create!({ name: "Hitchhiker's Guide to the Galaxy", price: "42.0", description: "It is slightly cheaper; and secondly it has the words DON'T PANIC inscribed in large friendly letters on its cover.", quantity: 4, supplier_id: supplier1.id })
Image.create!(url: "http://www.notcot.com/images/guide.gif", product_id: product.id)

product = Product.create!({ name: "WNYX Mug", price: "2.0", description: "Get your morning news once you wake up with a cup of joe from... well Joe. He made it with his homemade duct tape", quantity: 1, supplier_id: supplier1.id })
Image.create!(url: "https://i.pinimg.com/236x/14/4a/0b/144a0bffe37f29f414e2dae2bd0141cf.jpg", product_id: product.id)

product = Product.create!({ name: "Yoda sleeping bag", price: "40.0", description: "For real it'ss yoda my guy", quantity: 1, supplier_id: supplier2.id })
Image.create!(url: "https://staticdelivery.nexusmods.com/mods/1151/images/12353-0-1461721930.png", product_id: product.id)
Image.create(url: "https://i.ebayimg.com/images/g/J08AAOSwTMpgnJ9o/s-l1600.jpg", product_id: product.id)
