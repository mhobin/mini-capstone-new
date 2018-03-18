class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :price, numericality: {greater_than: 0}
  validates :name, length: {maximum: 30}

  def as_json
    {
    name: name,
    price: price,
    description: description,
    tax: tax,
    total: total,
    is_discounted: is_discounted?,
    supplier: supplier.as_json,
    images: images.as_json


    }
  end

  def tax
    tax = (price * 0.09).round(3)
  end

  def total
    total = price + tax
  end

  # def is_discounted?
  #   if price < 2
  #     return true
  #   else
  #     return false
  #   end
  # end

  def is_discounted?
    price < 2
  end

  def supplier
    Supplier.find_by(id: supplier_id)
  end

  def images
    Image.where(product_id: id)
  end

end
