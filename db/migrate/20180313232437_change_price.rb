class ChangePrice < ActiveRecord::Migration[5.1]
  def change
    change_column :products, :price, :decimal, precision: 8, scale: 2
    add_column :products, :in_stock, :boolean
  end
end
