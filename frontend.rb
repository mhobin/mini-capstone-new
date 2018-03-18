require 'unirest'

# response = Unirest.get("http://localhost:3000/v1/all-products")

# # p response.body
#  puts JSON.pretty_generate(response.body)

# response = Unirest.post("http://localhost:3000/v1/products", parameters:{
#   name: "comp",
#   price: 5,
#   description: "technology machine"
#   })

response = Unirest.patch("http://localhost:3000/v1/products/3", parameters:{
    name: "appleappleappleappleappleappleappleappleappleappleappleappleappleappleappleappleappleappleappleappleappleappleappleappleappleapple",
    price: 1,
    description: "red piece of fruit"
  })

# p "which product do you want to delete"
# product_id = gets.chomp
# response = Unirest.delete("http://localhost:3000/v1/products/#{product_id}")

puts response.body