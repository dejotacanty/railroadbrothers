# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

customer1 = Customer.create(
  
    {
      name: "Luke Skywalker"
    }
  
)

customer2 = Customer.create(
  
    {
      name: "Jar Jar Binks"
    }
  
)
customer3 = Customer.create(
  
    {
      name: "Darth Vader"
    }
  
)

ap customer1
ap customer2
ap customer3

product1 = Product.create(
  
    {
      name: "Juice"
    }
  
)

ap ""
ap product1

category1 = Category.create(
  
    {
      product_id: product1.id,
      name: "Nicotine Free"
    }
  
)

ap ""
ap category1

unit1 = Unit.create(
  
    {
      category_id: category1.id,
      name: "Swedish Fish",
      price: 30.00
    }
  
)

ap ""
ap unit1


orders = Order.create(
  [
    {
      customer_id: customer1.id
    },{
      customer_id: customer2.id
    },{
      customer_id: customer3.id
    }
  ]
)

orders.each do |order|
  ap order
end




