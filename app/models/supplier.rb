class Supplier < ApplicationRecord
  def products
    # Product.all #all products regardless of supplier
    Product.where(supplier_id: id)
  end
end
