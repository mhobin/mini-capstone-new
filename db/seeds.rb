# product = Product.new({name: "fridge", price: 500, description: "stores food"})
# product.save

products = Product.all
supplier_ids = [1,2]
products.each do |product|
  product.supplier_id = supplier_ids.sample
  product.save
end
