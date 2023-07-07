customer = Customer.create(name: "John Doe", email: "john@example.com")
coupon = Coupon.create(code: "SALE10", discount_percentage: 10)

Purchase.create(sale_id: "123", sale_price: 100, buyer_id: "456", customer: customer, coupon: coupon)

puts "Seed data created successfully."
